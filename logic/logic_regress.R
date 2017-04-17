d_regress <- eventReactive(input$submit_regress, {
	validate(need((input$regress_fmla != ''), 'Please specify model'))
  data <- final()
  k <- ols_regress(input$regress_fmla, data = data)
  k
})

model <- reactive({
	d_regress()
})

output$regress_out <- renderPrint({
    d_regress()
})
