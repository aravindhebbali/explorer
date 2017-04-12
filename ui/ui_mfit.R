tabPanel('Correlations',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Part and Partial Correlations')
                ),
                column(6, align = 'right',
                  actionButton(inputId='corlink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/correlations.html', '_blank')"),
                  actionButton(inputId='corlink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='corlink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("corrs_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("corrs_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'corr_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("corr_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_corrs', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_corrs", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', verbatimTextOutput('corrs_out'))
              )
            )
          ),
          tabPanel('Lack of Fit F Test',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Lack of Fit F Test')
                ),
                column(6, align = 'right',
                  actionButton(inputId='loftlink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/pure_error_anova.html', '_blank')"),
                  actionButton(inputId='loftlink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='loftlink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("lackf_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("lackf_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'lackf_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("lackf_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_lackf', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_lackf", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', verbatimTextOutput('lackf_out'))
              )
            )
          ),
          
          tabPanel('Obs vs Predicted Plot',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Observed vs Predicted Plot')
                ),
                column(6, align = 'right',
                  actionButton(inputId='ovsplink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/ovsp_plot.html', '_blank')"),
                  actionButton(inputId='ovsplink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='ovsplink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("obspred_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("obspred_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'ovsp_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("ovsp_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_obspred', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_obspred", "Click here to view observed by predicted plot.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', plotOutput('obspred_plot'))
              )
            )
          )