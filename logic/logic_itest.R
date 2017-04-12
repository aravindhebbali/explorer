observe({
    updateSelectInput(session,
                      inputId = "var_itest1",
                      choices = names(data()),
                      selected = '')
    updateSelectInput(session,
      inputId = "var_itest2",
      choices = names(data()),
      selected = '')

})

observeEvent(input$finalok, {
    f_data <- final()[, sapply(final(), is.factor)]
    num_data <- final()[, sapply(final(), is.numeric)]
    if (is.null(dim(f_data))) {
        k <- final() %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, inputId = "var_itest1",
            choices = names(fdata))
        } else {
          updateSelectInput(session, 'var_itest1', choices = names(f_data))
        }
    updateSelectInput(session,
                      inputId = "var_itest2",
                      choices = names(num_data))

})

d_itest <- eventReactive(input$submit_itest, {
	validate(need((input$var_itest1 != '' & input$var_itest2 != ''), 'Please select two variables.'))
    data <- final()[, c(input$var_itest1, input$var_itest2)]
})

output$itest_out <- renderPrint({
  if (nlevels(d_itest()[, 1]) > 2) {
    stop('Select a dichotomous variable.')
  } else {
    ind_ttest(d_itest(), as.character(input$var_itest1),
      as.character(input$var_itest2), input$itest_conf, input$itest_type)
  }
})
