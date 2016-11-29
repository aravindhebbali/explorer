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
                numericInput('bprob_s', 'Success', value = 1, min = 0,
                step = 1
                ),
                selectInput('bprob_tail', 'Tail',
                  choices = c('lower', 'upper', 'exact', 'interval'),
                  selected = 'lower'
                )
              )
            ),
            column(8,
              plotOutput('bprob_plot', height = '400px')
            )
          )
        )
      )
    )
  )

)
