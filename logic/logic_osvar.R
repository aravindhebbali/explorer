source('helper/one-samp-var-shiny.R')

observe({
    updateSelectInput(session,
                      inputId = "var_osvartest",
                      choices = names(data()),
                      selected = '')
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    updateSelectInput(session,
                      inputId = "var_osvartest",
                      choices = names(num_data))
})

d_osvartest <- eventReactive(input$submit_osvartest, {
	validate(need((input$var_osvartest != ''), 'Please select a variable.'))
    data <- final()
})

output$osvartest_out <- renderPrint({
    os_vartest_shiny(d_osvartest(), as.character(input$var_osvartest),
    input$sd_osvartest, input$osvartest_conf, input$osvartest_type)
})
