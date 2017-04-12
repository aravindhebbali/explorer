source('helper/paired-ttest-shiny.R')
source('helper/utils.R')

observe({
    updateSelectInput(session,
                      inputId = "var_ptest1",
                      choices = names(data()),
                      selected = '')
    updateSelectInput(session,
      inputId = "var_ptest2",
      choices = names(data()),
      selected = '')

})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    updateSelectInput(session,
                      inputId = "var_ptest1",
                      choices = names(num_data))
    updateSelectInput(session,
                      inputId = "var_ptest2",
                      choices = names(num_data))

})

d_ptest <- eventReactive(input$submit_ptest, {
	validate(need((input$var_ptest1 != '' & input$var_ptest2 != ''), 'Please select two variables.'))
    data <- final()
})

output$ptest_out <- renderPrint({
    paired_ttest_shiny(d_ptest(), as.character(input$var_ptest1),
    as.character(input$var_ptest2), input$ptest_conf, input$ptest_type)
})
