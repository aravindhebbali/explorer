tabPanel('Outliers/Influential Observations', value = 'tab_inflobs',
  fluidPage(
    fluidRow(
      column(12,
        tabsetPanel(type = 'tabs',
          tabPanel('DFBETAS Panel',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('DFBETAS Panel')
                ),
                column(6, align = 'right',
                  actionButton(inputId='dfblink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/dfbetas_panel.html', '_blank')"),
                  actionButton(inputId='dfblink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='dfblink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("dfbetas_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("dfbetas_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'dfb_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("dfb_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_dfbetas', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_dfbetas", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  # column(12, align = 'center', verbatimTextOutput('dfbdata'))
                  column(12, plotOutput('dfbetas_panel', height = '500px'))
              )
            )
          ),
          tabPanel('DFFITS Plot',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('DFFITS Plot')
                ),
                column(6, align = 'right',
                  actionButton(inputId='dfitslink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/dffits_plot.html', '_blank')"),
                  actionButton(inputId='dfitslink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='dfitslink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("dffits_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("dffits_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'dfits_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("dfits_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_dffits', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_dffits", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('dffits_plot', height = '500px'))
              )
            )
          ),
          tabPanel("Cook's D Bar Plot",
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4("Cook's D Bar Plot")
                ),
                column(6, align = 'right',
                  actionButton(inputId='cdbplink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/cooksd_bplot.html', '_blank')"),
                  actionButton(inputId='cdbplink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='cdbplink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("cooksb_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("cooksb_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'cdbp_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("cdbp_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_cooksb', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_cooksb", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('cooks_bplot', height = '500px'))
              )
            )
          ),
          tabPanel("Cook's D Chart",
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4("Cook's D Chart")
                ),
                column(6, align = 'right',
                  actionButton(inputId='cdclink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/cooksd_chart.html', '_blank')"),
                  actionButton(inputId='cdclink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='cdclink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("cooksc_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("cooksc_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'cooksc_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("cooksc_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_cooksc', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_cooksc", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('cooks_chart', height = '500px'))
              )
            )
          ),
          tabPanel('Hadi Plot',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Hadi Plot')
                ),
                column(6, align = 'right',
                  actionButton(inputId='hadiplink1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/hadi_plot.html', '_blank')"),
                  actionButton(inputId='hadiplink2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='hadiplink3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("hadiplot_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("hadiplot_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'hadip_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("hadip_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_hadiplot', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_hadiplot", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('hadi_plot', height = '500px'))
              )
            )
          )
        )
      )
    )
  )
)
