output$ui_resdiaglink <- renderUI({
    if (input$restrial1 == "Residual vs Predicted Plot") {
      fluidRow(
        column(6, align = 'left',
          h4('Residual vs Predicted Plot'),
          p('Plot to detect non-linearity, unequal error variances, and outliers.')
        ),
        column(6, align = 'right',
          actionButton(inputId='rvsp1', label="Help", icon = icon("question-circle"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/ols_rvsp_plot.html', '_blank')"),
          actionButton(inputId='rvsp2', label="Tutorial", icon = icon("university"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr-book/residual-diagnostics.html#residual-vs-fitted-values-plot', '_blank')"),
          actionButton(inputId='rvsp3', label="Demo", icon = icon("video-camera"),
            onclick ="window.open('http://google.com', '_blank')")
        )
      )
    } else if (input$restrial1 == "Residual Box Plot") {
      fluidRow(
        column(6, align = 'left',
          h4('Residual Box Plot')
        ),
        column(6, align = 'right',
          actionButton(inputId='rbplot1', label="Help", icon = icon("question-circle"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/ols_rsd_boxplot.html', '_blank')"),
          actionButton(inputId='rbplot2', label="Tutorial", icon = icon("university"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr-book/residual-diagnostics.html#residual-box-plot', '_blank')"),
          actionButton(inputId='rbplot3', label="Demo", icon = icon("video-camera"),
            onclick ="window.open('http://google.com', '_blank')")
        )
      )
    } else if (input$restrial1 == "Residual Histogram") {
      fluidRow(
        column(6, align = 'left',
          h4('Residual Histogram'),
          p('Histogram of residuals for detecting violation of normality assumption.')
        ),
        column(6, align = 'right',
          actionButton(inputId='rhist1', label="Help", icon = icon("question-circle"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/ols_rsd_hist.html', '_blank')"),
          actionButton(inputId='rhist2', label="Tutorial", icon = icon("university"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr-book/residual-diagnostics.html#residual-histogram', '_blank')"),
          actionButton(inputId='rhist3', label="Demo", icon = icon("video-camera"),
            onclick ="window.open('http://google.com', '_blank')")
        )
      )
    } else if (input$restrial1 == "Residual QQ Plot") {
      fluidRow(
        column(6, align = 'left',
          h4('Residual QQ Plot'),
          p('Graph for detecting violation of normality assumption.')
        ),
        column(6, align = 'right',
          actionButton(inputId='rqq1', label="Help", icon = icon("question-circle"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/ols_rsd_qqplot.html', '_blank')"),
          actionButton(inputId='rqq2', label="Tutorial", icon = icon("university"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr-book/residual-diagnostics.html#residual-qq-plot', '_blank')"),
          actionButton(inputId='rqq3', label="Demo", icon = icon("video-camera"),
            onclick ="window.open('http://google.com', '_blank')")
        )
      )
    } else if (input$restrial1 == "Normality Test") {
      fluidRow(
        column(6, align = 'left',
          h4('Normality Test'),
          p('Test for detecting violation of normality assumption.')
        ),
        column(6, align = 'right',
          actionButton(inputId='resnorm1', label="Help", icon = icon("question-circle"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr/reference/ols_norm_test.html', '_blank')"),
          actionButton(inputId='resnorm2', label="Tutorial", icon = icon("university"),
            onclick ="window.open('https://rsquaredacademy.github.io/olsrr-book/residual-diagnostics.html#residual-normality-test', '_blank')"),
          actionButton(inputId='resnorm3', label="Demo", icon = icon("video-camera"),
            onclick ="window.open('http://google.com', '_blank')")
        )
      )
    }
})

output$ui_resdiagfmla <- renderUI({
    if (input$restrial1 == "Residual vs Predicted Plot") {
      fluidRow(
        column(2, align = 'right', br(), h5('Model Formula:')),
        column(10, align = 'left',
            textInput("respred_fmla", label = '', width = '660px',
                            value = ""),
            bsTooltip("respred_fmla", "Specify model formula",
                      "left", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Residual Box Plot") {
      fluidRow(
        column(2, align = 'right', br(), h5('Model Formula:')),
        column(10, align = 'left',
            textInput("resbox_fmla", label = '', width = '660px',
                            value = ""),
            bsTooltip("resbox_fmla", "Specify model formula",
                      "left", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Residual Histogram") {
      fluidRow(
        column(2, align = 'right', br(), h5('Model Formula:')),
        column(10, align = 'left',
            textInput("reshist_fmla", label = '', width = '660px',
                            value = ""),
            bsTooltip("reshist_fmla", "Specify model formula",
                      "left", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Residual QQ Plot") {
      fluidRow(
        column(2, align = 'right', br(), h5('Model Formula:')),
        column(10, align = 'left',
            textInput("resqq_fmla", label = '', width = '660px',
                            value = ""),
            bsTooltip("resqq_fmla", "Specify model formula",
                      "left", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Normality Test") {
      fluidRow(
        column(2, align = 'right', br(), h5('Model Formula:')),
        column(10, align = 'left',
            textInput("resnorm_fmla", label = '', width = '660px',
                            value = ""),
            bsTooltip("resnorm_fmla", "Specify model formula",
                      "left", options = list(container = "body")))
      )
    }
})

output$ui_resdiagsubmit <- renderUI({
    if (input$restrial1 == "Residual vs Predicted Plot") {
      fluidRow(
          column(12, align = 'center',
          br(),
          br(),
          actionButton(inputId = 'submit_respred_plot', label = 'Submit', width = '120px', icon = icon('check')),
          bsTooltip("submit_respred_plot", "Click here to view regression result.",
                        "bottom", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Residual Box Plot") {
      fluidRow(
          column(12, align = 'center',
          br(),
          br(),
          actionButton(inputId = 'submit_resbox_plot', label = 'Submit', width = '120px', icon = icon('check')),
          bsTooltip("submit_resbox_plot", "Click here to view regression result.",
                        "bottom", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Residual Histogram") {
      fluidRow(
          column(12, align = 'center',
          br(),
          br(),
          actionButton(inputId = 'submit_reshist_plot', label = 'Submit', width = '120px', icon = icon('check')),
          bsTooltip("submit_reshist_plot", "Click here to view regression result.",
                        "bottom", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Residual QQ Plot") {
      fluidRow(
          column(12, align = 'center',
          br(),
          br(),
          actionButton(inputId = 'submit_resqq_plot', label = 'Submit', width = '120px', icon = icon('check')),
          bsTooltip("submit_resqq_plot", "Click here to view regression result.",
                        "bottom", options = list(container = "body")))
      )
    } else if (input$restrial1 == "Normality Test") {
      fluidRow(
          column(12, align = 'center',
          br(),
          br(),
          actionButton(inputId = 'submit_resnorm', label = 'Submit', width = '120px', icon = icon('check')),
          bsTooltip("submit_resnorm", "Click here to view normality test result.",
                        "bottom", options = list(container = "body")))
      )
    }
})

output$ui_resdiagprev <- renderUI({
  if (input$restrial1 == "Residual vs Predicted Plot") {
    fluidRow(
      column(2, align = 'right', br(), h5('Use previous model:')),
      column(2, align = 'left', br(),
        checkboxInput(inputId = 'respred_use_prev', label = '',
          value = FALSE),
        bsTooltip("respred_use_prev", "Use model from Regression Tab.",
                    "left", options = list(container = "body"))
      )
    )
  } else if (input$restrial1 == "Residual Box Plot") {
    fluidRow(
      column(2, align = 'right', br(), h5('Use previous model:')),
      column(2, align = 'left', br(),
        checkboxInput(inputId = 'resbox_use_prev', label = '',
          value = FALSE),
        bsTooltip("resbox_use_prev", "Use model from Regression Tab.",
                    "left", options = list(container = "body"))
      )
    )
  } else if (input$restrial1 == "Residual Histogram") {
    fluidRow(
      column(2, align = 'right', br(), h5('Use previous model:')),
      column(2, align = 'left', br(),
        checkboxInput(inputId = 'reshist_use_prev', label = '',
          value = FALSE),
        bsTooltip("reshist_use_prev", "Use model from Regression Tab.",
                    "left", options = list(container = "body"))
      )
    )
  } else if (input$restrial1 == "Residual QQ Plot") {
    fluidRow(
      column(2, align = 'right', br(), h5('Use previous model:')),
      column(2, align = 'left', br(),
        checkboxInput(inputId = 'resqq_use_prev', label = '',
          value = FALSE),
        bsTooltip("resqq_use_prev", "Use model from Regression Tab.",
                    "left", options = list(container = "body"))
      )
    )
  } else if (input$restrial1 == "Normality Test") {
    fluidRow(
      column(2, align = 'right', br(), h5('Use previous model:')),
      column(2, align = 'left', br(),
        checkboxInput(inputId = 'resnorm_use_prev', label = '',
          value = FALSE),
        bsTooltip("resnorm_use_prev", "Use model from Regression Tab.",
                    "left", options = list(container = "body"))
      )
    )
  }
})

output$ui_resdiagout <- renderUI({
  if (input$restrial1 == "Residual vs Predicted Plot") {
    fluidRow(
      br(),
      column(12, align = 'center', plotOutput('resvsplot', height = '500px'))
    )
  } else if (input$restrial1 == "Residual Box Plot") {
    fluidRow(
      br(),
      column(12, align = 'center', plotOutput('resboxplot', height = '500px'))
    )
  } else if (input$restrial1 == "Residual Histogram") {
    fluidRow(
      br(),
      column(12, align = 'center', plotOutput('reshistplot', height = '500px'))
    )
  } else if (input$restrial1 == "Residual QQ Plot") {
    fluidRow(
      br(),
      column(12, align = 'center', plotOutput('resqqplot', height = '500px'))
    )
  } else if (input$restrial1 == "Normality Test") {
    fluidRow(
      br(),
      column(12, align = 'center', verbatimTextOutput('resnormtest'))
    )
  }
})


d_respred_mod <- eventReactive(input$submit_respred_plot, {
  validate(need((input$respred_fmla != ''), 'Please specify model'))
    data <- final()
})

d_resbox_mod <- eventReactive(input$submit_resbox_plot, {
  validate(need((input$resbox_fmla != ''), 'Please specify model'))
    data <- final()
})

d_reshist_mod <- eventReactive(input$submit_reshist_plot, {
  validate(need((input$reshist_fmla != ''), 'Please specify model'))
    data <- final()
})

d_resqq_mod <- eventReactive(input$submit_resqq_plot, {
  validate(need((input$resqq_fmla != ''), 'Please specify model'))
    data <- final()
})

d_resnorm_mod <- eventReactive(input$submit_resnorm, {
  validate(need((input$resnorm_fmla != ''), 'Please specify model'))
    data <- final()
})


respred_mod <- reactive({
  k <- lm(input$respred_fmla, data = d_respred_mod())
  k
})

resbox_mod <- reactive({
  k <- lm(input$resbox_fmla, data = d_resbox_mod())
  k
})

reshist_mod <- reactive({
  k <- lm(input$reshist_fmla, data = d_reshist_mod())
  k
})

resqq_mod <- reactive({
  k <- lm(input$resqq_fmla, data = d_resqq_mod())
  k
})

resnorm_mod <- reactive({
  k <- lm(input$resnorm_fmla, data = d_resnorm_mod())
  k
})



resvsplot <- eventReactive(input$submit_respred_plot, {
  if(input$respred_use_prev) {
      ols_rvsp_plot(all_use_n())
    } else {
      ols_rvsp_plot(respred_mod())
    }
})

resboxplot <- eventReactive(input$submit_resbox_plot, {
  if(input$resbox_use_prev) {
      ols_rsd_boxplot(all_use_n())
    } else {
      ols_rsd_boxplot(resbox_mod())
    }
})

reshistplot <- eventReactive(input$submit_reshist_plot, {
  if(input$reshist_use_prev) {
      ols_rsd_hist(all_use_n())
    } else {
      ols_rsd_hist(reshist_mod())
    }
})

resqqplot <- eventReactive(input$submit_resqq_plot, {
  if(input$resqq_use_prev) {
      ols_rsd_qqplot(all_use_n())
    } else {
      ols_rsd_qqplot(resqq_mod())
    }
})

resnormtest <- eventReactive(input$submit_resnorm, {
  if(input$resnorm_use_prev) {
      ols_norm_test(all_use_n())
    } else {
      ols_norm_test(resnorm_mod())
    }
})


output$resvsplot <- renderPlot({
  resvsplot()
})

output$resboxplot <- renderPlot({
  resboxplot()
})

output$reshistplot <- renderPlot({
  reshistplot()
})

output$resqqplot <- renderPlot({
  resqqplot()
})

output$resnormtest <- renderPrint({
  resnormtest()
})

