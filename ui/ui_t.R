tabPanel('t Distribution', value = 'tab_t',

  fluidPage(
    fluidRow(
      column(12,
        tabsetPanel(type = 'tabs',
          tabPanel('Distribution Shape',
            column(2,
              column(12, align = 'center',
                br(),
                br(),
                numericInput('t_df', 'Degrees of Freedom', value = 1,
                 min = 0, step = 1)
              )
            ),
            column(10,
              plotOutput('t_shape', height = '500px')
            )
          ),
          tabPanel('Find Probability',
            column(2,
              column(12, align = 'center',
                br(),
                br(),
                numericInput('tprob_p', 'Percentile', value = 2, min = 0,
                  step = 1),
                numericInput('tprob_df', 'Degrees of Freedom', value = 1,
                  min = 0, step = 1),
                selectInput('tprob_tail', 'Tail',
                  choices = c('lower', 'upper', 'interval', 'both'),
                  selected = 'lower'
                )
              )
            ),
            column(10,
              plotOutput('tprob_plot', height = '500px')
            )
          ),
          tabPanel('Find Percentile',
            column(2,
              column(12, align = 'center',
                br(),
                br(),
                numericInput('tperc_p', 'Probability', value = 0.3, min = 0,
                  step = 0.01, max = 1
                ),
                numericInput('tperc_df', 'Degrees of Freedom', value = 1,
                  min = 0, step = 1),
                selectInput('tperc_tail', 'Tail',
                  choices = c('lower', 'upper', 'both'),
                  selected = 'lower'
                )
              )
            ),
            column(10,
              plotOutput('tperc_plot', height = '500px')
            )
          )
        )
      )
    ),

    fluidRow(

        column(4, align = 'left',

            br(),
            br(),
            img(src = 'normal.png', height = 50, width = 50),
            actionButton(inputId = 't_norm', label = 'Normal', width = '120px'),
            bsTooltip("t_norm", "Click here to explore normal distribution.",
                      "top", options = list(container = "body")),
            br(),
            br(),
            br()

        ),

        column(4, align = 'center',
             br(),
             br(),
             img(src = 'home_icon.png', height = 50, width = 50),
             actionButton(inputId="t_home", label="Home", width = '120px'),
             bsTooltip("t_home", "Click here to return home.",
                      "top", options = list(container = "body"))
        ),

        column(4, align = 'right',
             br(),
             br(),
             img(src = 'chisq.png', height = 50, width = 50),
             actionButton(inputId="t_chisq", label="Chi Square", width = '120px'),
             bsTooltip("t_chisq", "Click here to explore chi square distribution.",
                      "top", options = list(container = "body"))
        )

    )
  )

)
