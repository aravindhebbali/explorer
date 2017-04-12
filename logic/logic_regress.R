d_regress <- eventReactive(input$submit_regress, {
	validate(need((input$regress_fmla != ''), 'Please specify model'))
    data <- final()
})

model <- reactive({
	k <- ols_regress(input$regress_fmla, data = d_regress())
})

output$regress_out <- renderPrint({
    ols_regress(input$regress_fmla, data = d_regress())
})
