observe({
    updateSelectInput(session, 'var_runs', choices = names(data()))
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    updateSelectInput(session, 'var_runs', choices = names(num_data))
})

d_runs <- eventReactive(input$submit_runs, {
	validate(need((input$var_runs != ''), 'Please select variables.'))
  data <- final()[, c(input$var_runs)]
})

output$runs_out <- renderPrint({
  runs_test(d_runs(), as.logical(input$runs_drop), as.logical(input$runs_split),
    as.logical(input$runs_mean), input$runs_thold)
})
