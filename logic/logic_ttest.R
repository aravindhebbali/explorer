source('helper/t-test-shiny.R')

observe({
    updateSelectInput(session,
                      inputId = "var_ttest",
                      choices = names(data()),
                      selected = '')

})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    updateSelectInput(session,
                      inputId = "var_ttest",
                      choices = names(num_data))
    updateNumericInput(session = session,
                      inputId = 'ttest_mu',
                      value = mean(num_data))

})

d_ttest <- eventReactive(input$submit_ttest, {
	validate(need(input$var_ttest != '', 'Please select a variable.'))
    data <- final()
})

output$ttest_out <- renderPrint({
    ttest_shiny(d_ttest(), as.character(input$var_ttest), as.numeric(input$ttest_mu), input$ttest_alpha, input$ttest_type)
})
