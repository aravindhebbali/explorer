observe({
    updateSelectInput(session,
      inputId = "var_tsvartest1",
      choices = names(data()),
      selected = '')
    updateSelectInput(session,
      inputId = "var_tsvartest2",
      choices = names(data()),
      selected = '')
    updateSelectInput(session,
      inputId = "var_tsvartestg1",
      choices = names(data()),
      selected = '')
    updateSelectInput(session,
      inputId = "var_tsvartestg2",
      choices = names(data()),
      selected = '')
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    f_data <- final()[, sapply(final(), is.factor)]
    updateSelectInput(session, inputId = "var_tsvartest1", choices = names(num_data))
    updateSelectInput(session, inputId = "var_tsvartest2", choices = names(num_data))
    updateSelectInput(session, inputId = "var_tsvartestg1", choices = names(num_data))
    if (is.null(dim(f_data))) {
        k <- final() %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, inputId = "var_tsvartestg2",
            choices = names(fdata))
        } else {
          updateSelectInput(session, 'var_tsvartestg2', choices = names(f_data))
        }
})

d_tsvartest <- eventReactive(input$submit_tsvartest, {
	validate(need((input$var_tsvartest1 != '' & input$var_tsvartest2 != ''), 'Please select variables.'))
    data <- final()[, c(input$var_tsvartest1, input$var_tsvartest2)]
})

d_tsvartestg <- eventReactive(input$submit_tsvartestg, {
	validate(need((input$var_tsvartestg1 != '' & input$var_tsvartestg2 != ''), 'Please select variables.'))
    data <- final()[, c(input$var_tsvartestg1, input$var_tsvartestg2)]
})

output$tsvartest_out <- renderPrint({
    var_test_shiny(d_tsvartest(), as.character(input$var_tsvartest1), as.character(input$var_tsvartest2), 
      alternative = input$tsvartest_type)
})

output$tsvartestg_out <- renderPrint({
  if (nlevels(d_tsvartestg()[, 2]) > 2) {
    stop('Select a dichotomous variable.')
  } else {
    var_test(d_tsvartestg()[, 1], group_var = d_tsvartestg()[, 2], alternative = input$tsvartestg_type)
  }
})
