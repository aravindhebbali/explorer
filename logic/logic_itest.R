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
    if (is.null(dim(num_data))) {
            k <- final() %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'var_itest2',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'var_itest2',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'var_itest2', choices = names(num_data))
        }

})

d_itest <- eventReactive(input$submit_itest, {
	validate(need((input$var_itest1 != '' & input$var_itest2 != ''), 'Please select two variables.'))
  req(input$var_itest1)
  req(input$var_itest2)
  data <- final()[, c(input$var_itest1, input$var_itest2)]
  validate(need(nlevels(data[, 1]) == 2, 'Please select a binary variable.'))
  k <- ind_ttest(data, as.character(input$var_itest1),
      as.character(input$var_itest2), input$itest_conf, input$itest_type)
  k
})

output$itest_out <- renderPrint({
  d_itest()
})
