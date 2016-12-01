tabPanel('Chisquare Distribution', value = 'tab_chisq',

  fluidPage(
    fluidRow(
      column(12,
        tabsetPanel(type = 'tabs',
          tabPanel('Distribution Shape',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('chisq_df', 'Degrees of freedom', value = 4,
                  min = 1, step = 1
                ),
                selectInput('chisq_norm', 'Normal Distribution',
                  choices = c('TRUE' = TRUE, 'FALSE' = FALSE),
                  selected = 'FALSE'
                )
              )
            ),
            column(8,
              plotOutput('chisq_shape', height = '400px')
            )
          ),
          tabPanel('Find Probability',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('chiprob_p', 'Percentile', value = 2,
                  min = 0, step = 1
                ),
                numericInput('chiprob_df', 'Degrees of freedom', value = 4,
                  min = 1, step = 1
                ),
                selectInput('chiprob_tail', 'Tail',
                  choices = c('lower', 'upper'), selected = 'lower'
                )
              )
            ),
            column(8,
              plotOutput('chiprob_plot', height = '400px')
            )
          ),
          tabPanel('Find Percentile',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('chiperc_p', 'Probability', value = 0.3, min = 0,
                  step = 0.01, max = 1
                ),
                numericInput('chiperc_df', 'Degrees of freedom', value = 4,
                  min = 1, step = 1
                ),
                selectInput('chiperc_tail', 'Tail',
                  choices = c('lower', 'upper'), selected = 'lower'
                )
              )
            ),
            column(8,
              plotOutput('chiperc_plot', height = '400px')
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
            actionButton(inputId = 'chisq_t', label = 't', width = '120px'),
            bsTooltip("chisq_t", "Click here to explore t distribution.",
                      "top", options = list(container = "body")),
            br(),
            br(),
            br()

        ),

        column(4, align = 'center',
             br(),
             br(),
             img(src = 'home_icon.png', height = 50, width = 50),
             actionButton(inputId="chisq_home", label="Home", width = '120px'),
             bsTooltip("chisq_home", "Click here to return home.",
                      "top", options = list(container = "body"))
        ),

        column(4, align = 'right',
             br(),
             br(),
             img(src = 'view_data.png', height = 50, width = 50),
             actionButton(inputId="chisq_binom", label="Binomial", width = '120px'),
             bsTooltip("chisq_binom", "Click here to explore binomial distribution.",
                      "top", options = list(container = "body"))
        )

    )
  )

)
