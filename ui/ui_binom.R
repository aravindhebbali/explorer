tabPanel('Binomial Distribution', value = 'tab_binom',

  fluidPage(
    fluidRow(
      column(12,
        tabsetPanel(type = 'tabs',
          tabPanel('Distribution Shape',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('binom_n', 'Number of trials', value = 10, min = 1,
                  step = 1
                ),
                numericInput('binom_p', 'Probability', value = 0.3, min = 0,
                  max = 1, step = 0.01
                )
              )
            ),
            column(8,
              plotOutput('binom_shape', height = '400px')
            )
          ),
          tabPanel('Find Probability',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('bprob_n', 'Number of trials', value = 10, min = 1,
                  step = 1
                ),
                numericInput('bprob_p', 'Probability', value = 0.3, min = 0,
                  max = 1, step = 0.01
                ),
                selectInput('bprob_tail', 'Tail',
                  choices = c('lower', 'upper', 'exact', 'interval'),
                  selected = 'lower'
                ),
                conditionalPanel(
                  condition = "input.bprob_tail != 'interval'",
                  numericInput('bprob_s', 'Success', value = 1, min = 0, step = 1)
                ),
                conditionalPanel(
                  condition = "input.bprob_tail == 'interval'",
                  numericInput('bprob_tail_1', 'Lower', value = 1, min = 0, step = 1),
                  br(),
                  numericInput('bprob_tail_2', 'Upper', value = 1, min = 0, step = 1)
                )
              )
            ),
            column(8,
              plotOutput('bprob_plot', height = '400px')
            )
          ),
          tabPanel('Find Percentile',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('bperc_n', 'Number of trials', value = 10, min = 1,
                  step = 1
                ),
                numericInput('bperc_p', 'Aggregated Probability', value = 0.3,
                  min = 0, max = 1, step = 0.01
                ),
                numericInput('bperc_tp', 'Success Probability', value = 0.05,
                  min = 0, max = 0.5, step = 0.01
                ),
                selectInput('bperc_tail', 'Tail',
                  choices = c('lower', 'upper'), selected = 'lower'
                )
              )
            ),
            column(8,
              plotOutput('bperc_plot', height = '400px')
            )
          )
        )
      )
    ),

    fluidRow(

        column(4, align = 'left',

            br(),
            br(),
            img(src = 'transform.png', height = 50, width = 50),
            actionButton(inputId = 'binom_chisq', label = 'Chi Square', width = '120px'),
            bsTooltip("binom_chisq", "Click here to explore chisquare distribution.",
                      "top", options = list(container = "body")),
            br(),
            br(),
            br()

        ),

        column(4, align = 'center',
             br(),
             br(),
             img(src = 'home_icon.png', height = 50, width = 50),
             actionButton(inputId="binom_home", label="Home", width = '120px'),
             bsTooltip("binom_home", "Click here to return home.",
                      "top", options = list(container = "body"))
        ),

        column(4, align = 'right',
             br(),
             br(),
             img(src = 'view_data.png', height = 50, width = 50),
             actionButton(inputId="binom_f", label= "f", width = '120px'),
             bsTooltip("binom_f", "Click here to explore f distribution.",
                      "top", options = list(container = "body"))
        )

    )
  )

)
