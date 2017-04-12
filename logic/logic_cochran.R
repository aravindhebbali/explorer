observe({
    updateSelectInput(session, 'var_cochran', choices = names(data()))
})

observeEvent(input$finalok, {
    f_data <- final()[, sapply(final(), is.factor)]
    updateSelectInput(session, 'var_cochran', choices = names(f_data))
})

d_cochran <- eventReactive(input$submit_cochran, {
	validate(need((input$var_cochran != ''), 'Please select variables.'))
  data <- final()[, c(input$var_cochran)]
})

output$cochran_out <- renderPrint({
  cochran_test(d_cochran())
})
