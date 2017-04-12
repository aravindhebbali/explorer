tabPanel('Summary', value = 'tab_summary',

    fluidPage(

      fluidRow(
        column(8, align = 'left',
          h4('Summary Statistics'),
          p('Generate descriptive statistics for continuous data.')
        ),
        column(4, align = 'right',
          actionButton(inputId='sumrylink1', label="Help", icon = icon("question-circle"),
            onclick ="window.open('https://rsquaredacademy.github.io/descriptr/reference/summary_stats.html', '_blank')"),
          actionButton(inputId='sumrylink2', label="Tutorial", icon = icon("university"),
            onclick ="window.open('https://rsquaredacademy.github.io/descriptr-book/measures-of-location.html#summary-statistics', '_blank')"),
          actionButton(inputId='sumrylink3', label="Demo", icon = icon("video-camera"),
            onclick ="window.open('http://google.com', '_blank')")
        )
      ),
      hr(),

        fluidRow(

            column(1, align = 'right',

                br(),
                br(),
                h5('Variable:')

            ),

            column(3, align = 'left',

                br(),

                selectInput("var_summary", label = '',
                               choices = "", selected = "", width = '150px'
                ),
                bsTooltip("var_summary", "Select a variable.",
                              "bottom", options = list(container = "body"))

            ),

            column(1, align = 'right',

                br(),
                br(),
                h5('Filter:')

            ),

            column(3, align = 'left',

                

                sliderInput("filter_summary", label = '', min = 0, max = 100, step = 10, value = c(20, 80), width = '250px'),
                bsTooltip("filter_summary", "Filter data using th slider.",
                              "bottom", options = list(container = "body"))

            ),

            column(4, align = 'center',

                br(),
                br(),

                actionButton(inputId = 'submit_summary', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_summary", "Click here to view summary statistics.",
                              "bottom", options = list(container = "body"))

            )

        ),

        fluidRow(

            br(),
            br(),

            column(12, align = 'center',

                verbatimTextOutput('summary')

            )

        )

    )

)
