tabPanel('Model Selection', value = 'tab_mselection',
  fluidPage(
    fluidRow(
      column(12,
        tabsetPanel(type = 'tabs',
          tabPanel('All Subset',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('All Subset Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='allsub1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/all_subset.html', '_blank')"),
                  actionButton(inputId='allsub2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='allsub3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("allsub_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("allsub_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'all_use_model', label = '',
                    value = FALSE),
                  bsTooltip("all_use_model", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                  column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_allsub', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_allsub", "Click here to view all subsets regression.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('All Subset Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('allsub_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('All Subset Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('allsub_plot', height = '1500px'))
              )
            )
          ),
          tabPanel('Best Subset',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Best Subset Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='bestsub1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/best_subset.html', '_blank')"),
                  actionButton(inputId='bestsub2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='bestsub3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("bestsub_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("bestsub_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'best_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("best_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                  column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_bestsub', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_bestsub", "Click here to view best subsets regression.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Best Subset Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('bestsub_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Best Subset Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('bestsub_plot', height = '1500px'))
              )
            )
          ),
          tabPanel('Stepwise',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Stepwise Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='stepwise1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/stepwise.html', '_blank')"),
                  actionButton(inputId='stepwise2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='stepwise3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("stepwise_fmla", label = '', width = '860px',
                                    value = ""),
                    bsTooltip("stepwise_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'step_use_prev', label = '',
                    value = FALSE),
                  bsTooltip("step_use_prev", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Prob (Enter):')),
                column(2, align = 'left',
                    numericInput("stepwise_pent", label = '', width = '200px',
                                    value = 0.3, min = 0, max = 1, step = 0.01),
                    bsTooltip("stepwise_pent", "Minimum p value for adding variable to model.",
                              "left", options = list(container = "body"))),
                column(2, align = 'right', br(), h5('Prob (Removal):')),
                column(2, align = 'left',
                  numericInput("stepwise_prem", label = '', width = '200px',
                    value = 0.3, min = 0, max = 1, step = 0.01),
                  bsTooltip("stepwise_prem", "Maximum p value for removing variable from model.",
                    "left", options = list(container = "body"))),
                column(2, align = 'right', br(), h5('Details:')),
                column(2, align = 'left',
                  selectInput('stepwise_details', '',
                    choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                    selected = "FALSE"),
                  bsTooltip("stepwise_details", "Print model selection details.",
                    "left", options = list(container = "body")))
              ),
              fluidRow(
                    column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_stepwise', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_stepwise", "Click here to view stepwise regression.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Stepwise Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('stepwise_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Stepwise Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('stepwise_plot', height = '1500px'))
              )
            )
          ),
          tabPanel('Forward',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Stepwise Forward Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='stepf1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/step_forward.html', '_blank')"),
                  actionButton(inputId='stepf2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='stepf3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("forward_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("forward_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'stepf_use_model', label = '',
                    value = FALSE),
                  bsTooltip("stepf_use_model", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Prob (Enter):')),
                column(4, align = 'left',
                    numericInput("forward_pent", label = '', width = '200px',
                                    value = 0.3, min = 0, max = 1, step = 0.01),
                    bsTooltip("forward_pent", "Minimum p value for adding variable to model.",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Details:')),
                column(4, align = 'left',
                  selectInput('forward_details', '', width = '200px',
                    choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                    selected = "FALSE"),
                  bsTooltip("forward_details", "Print model selection details.",
                    "left", options = list(container = "body")))
              ),
              fluidRow(
                  column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_forward', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_forward", "Click here to view best stepwise forward regression.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Stepwise Forward Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('forward_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Stepwise Forward Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('forward_plot', height = '1500px'))
              )
            )
          ),
          tabPanel('Backward',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('Stepwise Backward Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='stepb1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/step_backward.html', '_blank')"),
                  actionButton(inputId='stepb2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='stepb3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("backward_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("backrward_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'stepb_use_model', label = '',
                    value = FALSE),
                  bsTooltip("stepb_use_model", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Prob (Removal):')),
                column(4, align = 'left',
                    numericInput("backward_prem", label = '', width = '200px',
                                    value = 0.3, min = 0, max = 1, step = 0.01),
                    bsTooltip("backward_prem", "Minimum p value for removing variables from model.",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Details:')),
                column(4, align = 'left',
                  selectInput('backward_details', '', width = '200px',
                    choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                    selected = "FALSE"),
                  bsTooltip("backward_details", "Print model selection details.",
                    "left", options = list(container = "body")))
              ),
              fluidRow(
                  column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_backward', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_backward", "Click here to view stepwise backward elimination.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Stepwise Backward Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('backward_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('Stepwise Backward Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('backward_plot', height = '1500px'))
              )
            )
          ),
          tabPanel('stepAIC Forward',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('stepAIC Forward Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='stepaicf1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/stepaic_forward.html', '_blank')"),
                  actionButton(inputId='stepaicf2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='stepaicf3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("aicforward_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("aicforward_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'stepaicf_use_model', label = '',
                    value = FALSE),
                  bsTooltip("stepaicf_use_model", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Details:')),
                column(4, align = 'left',
                  selectInput('aicforward_details', '', width = '200px',
                    choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                    selected = "FALSE"),
                  bsTooltip("aicforward_details", "Print model selection details.",
                    "left", options = list(container = "body")))
              ),
              fluidRow(
                  column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_aicforward', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_aicforward", "Click here to view forward selection based on AIC.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('stepAIC Forward Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('aicforward_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('stepAIC Forward Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('aicforward_plot', height = '1500px'))
              )
            )
          ),
          tabPanel('stepAIC Backward',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('stepAIC Backward Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='stepaicb1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/stepaic_backward.html', '_blank')"),
                  actionButton(inputId='stepaicb2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='stepaicb3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("aicbackward_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("aicbackrward_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'stepaicb_use_model', label = '',
                    value = FALSE),
                  bsTooltip("stepaicb_use_model", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Details:')),
                column(4, align = 'left',
                  selectInput('aicbackward_details', '', width = '200px',
                    choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                    selected = "FALSE"),
                  bsTooltip("aicbackward_details", "Print model selection details.",
                    "left", options = list(container = "body")))
              ),
              fluidRow(
                  column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_aicbackward', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_aicbackward", "Click here to view backward elimination based on AIC.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('stepAIC Backward Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('aicbackward_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('stepAIC Backward Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('aicbackward_plot', height = '1500px'))
              )
            )
          ),
          tabPanel('stepAIC Both',
            fluidPage(
              br(),
              fluidRow(
                column(6, align = 'left',
                  h4('stepAIC(Both) Regression')
                ),
                column(6, align = 'right',
                  actionButton(inputId='stepaicbo1', label="Help", icon = icon("question-circle"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='stepaicbo2', label="Tutorial", icon = icon("university"),
                    onclick ="window.open('http://google.com', '_blank')"),
                  actionButton(inputId='stepaicbo3', label="Demo", icon = icon("video-camera"),
                    onclick ="window.open('http://google.com', '_blank')")
                )
              ),
              hr(),
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("aicboth_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("aicboth_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Use previous model:')),
                column(2, align = 'left', br(),
                  checkboxInput(inputId = 'saicbo_use_model', label = '',
                    value = FALSE),
                  bsTooltip("saicbo_use_model", "Use model from Regression Tab.",
                              "left", options = list(container = "body"))
                )
              ),
              fluidRow(
                column(2, align = 'right', br(), h5('Details:')),
                column(4, align = 'left',
                  selectInput('aicboth_details', '', width = '200px',
                    choices = c("TRUE" = TRUE, "FALSE" = FALSE),
                    selected = "FALSE"),
                  bsTooltip("aicboth_details", "Print model selection details.",
                    "left", options = list(container = "body")))
              ),
              fluidRow(
                  column(12, align = 'center',
                  br(),
                  br(),
                  actionButton(inputId = 'submit_aicboth', label = 'Submit', width = '120px', icon = icon('check')),
                  bsTooltip("submit_aicboth", "Click here to view stepwise regression based on AIC.",
                                "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('stepAIC Regression Result')),
                  hr(),
                  column(12, align = 'center', verbatimTextOutput('aicboth_out')),
                  hr()
              ),
              fluidRow(
                  br(),
                  column(12, align = 'center', h4('stepAIC Regression Plot')),
                  hr(),
                  br(),
                  column(12, plotOutput('aicboth_plot', height = '1500px'))
              )
            )
          )
        )
      )
    )
  )
)
