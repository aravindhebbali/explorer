tabPanel('Chi Square Proportion', value = 'tab_chiprop',
  fluidPage(
    fluidRow(
      column(6, align = 'left',
        h4('Chi Square Proportion Test')
      ),
      column(6, align = 'right',
        actionButton(inputId='chiproplink1', label="Help", icon = icon("question-circle"),
          onclick ="window.open('http://google.com', '_blank')"),
        actionButton(inputId='chiproplink2', label="Tutorial", icon = icon("university"),
          onclick ="window.open('http://google.com', '_blank')"),
        actionButton(inputId='chiproplink3', label="Demo", icon = icon("video-camera"),
          onclick ="window.open('http://google.com', '_blank')")
      )
    ),
    hr(),
    fluidRow(
      column(3, align = 'right', br(), h5('Variable 1:')),
      column(3, align = 'left',
          selectInput("var_chiprop1", label = '', width = '200px',
                          choices = "", selected = ""),
          bsTooltip("var_chiprop1", "Select a variable.",
                    "left", options = list(container = "body"))),
      column(3, align = 'right', br(), h5('Continuity Correction:')),
      column(3, align = 'left',
        selectInput('chiprop_cc', '',
          choices = c("TRUE" = TRUE, "FALSE" = FALSE),
          selected = "FALSE"),
        bsTooltip("chiprop_cc", "Apply continuity correction",
          "bottom", options = list(container = "body")))
    ),
    fluidRow(
      br(),
      br(),
      column(3, align = 'right', br(), h5('Expected Proportion:')),
      column(3, align = 'left', uiOutput('chiprop_prop')),
      column(3, align = 'right', br(), h5('Conf Int')),
      column(3, align = 'left',
        numericInput('chiprop_conf', label = '',
          min = 0, value = 0.95, step = 0.01),
        bsTooltip("chiprop_conf", "Confidence Level",
          "bottom", options = list(container = "body")))
    ),
    fluidRow(
        column(12, align = 'center',
        br(),
        br(),
        actionButton(inputId = 'update_chiprop', label = 'Update', width = '120px', icon = icon('check')),
        bsTooltip("update_chiprop", "Update proportions",
                      "bottom", options = list(container = "body")))
    ),
    fluidRow(
        column(12, align = 'center',
        br(),
        br(),
        actionButton(inputId = 'submit_chiprop', label = 'Submit', width = '120px', icon = icon('check')),
        bsTooltip("submit_chiprop", "Click here to view result.",
                      "bottom", options = list(container = "body")))
    ),
    fluidRow(
        br(),
        column(12, align = 'center',
            verbatimTextOutput('chiprop_out')
        )
    )
  )
)
