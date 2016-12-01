tabPanel('F Distribution', value = 'tab_f',

  fluidPage(
    fluidRow(
      column(12,
        tabsetPanel(type = 'tabs',
          tabPanel('Distribution Shape',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('f_numdf', 'Numerator Degrees of freedom',
                  value = 4, min = 1, step = 1
                ),
                numericInput('f_dendf', 'Denominator Degrees of freedom',
                  value = 5, min = 1, step = 1
                ),
                selectInput('f_norm', 'Normal Distribution',
                  choices = c('TRUE' = TRUE, 'FALSE' = FALSE),
                  selected = 'FALSE'
                )
              )
            ),
            column(8,
              plotOutput('f_shape', height = '400px')
            )
          ),
          tabPanel('Find Probability',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('fprob_p', 'Percentile', value = 2,
                  min = 0, step = 1
                ),
                numericInput('fprob_numdf', 'Numerator Degrees of freedom',
                  value = 4, min = 1, step = 1
                ),
                numericInput('fprob_dendf', 'Denominator Degrees of freedom',
                  value = 5, min = 1, step = 1
                ),
                selectInput('fprob_tail', 'Tail',
                  choices = c('lower', 'upper'), selected = 'lower'
                )
              )
            ),
            column(8,
              plotOutput('fprob_plot', height = '400px')
            )
          ),
          tabPanel('Find Percentile',
            column(4,
              column(6, align = 'center',
                br(),
                br(),
                numericInput('fperc_p', 'Probability', value = 0.3, min = 0,
                  step = 0.01, max = 1
                ),
                numericInput('fperc_numdf', 'Numerator Degrees of freedom',
                  value = 4, min = 1, step = 1
                ),
                numericInput('fperc_dendf', 'Denominator Degrees of freedom',
                  value = 5, min = 1, step = 1
                ),
                selectInput('fperc_tail', 'Tail',
                  choices = c('lower', 'upper'), selected = 'lower'
                )
              )
            ),
            column(8,
              plotOutput('fperc_plot', height = '400px')
            )
          )
        )
      )
    ),

    fluidRow(
        column(6, align = 'center',
            # link to upload page
            br(),
            br(),
            img(src = 'upload_data.jpg', height = 50, width = 50),
            actionButton(inputId = 'f_binom', label = 'Binomial', width = '100px'),
            bsTooltip("f_binom", "Click here to explore binomial distribution.",
                          "top", options = list(container = "body"))
        ),
        column(6, align = 'center',
            # link to home page
            br(),
            br(),
            img(src = 'home_icon.png', height = 50, width = 50),
            actionButton(inputId = 'f_home', label = 'Home', width = '100px'),
            bsTooltip("f_home", "Click here to return home.",
                          "top", options = list(container = "body"))
        )
    )
  )

)
