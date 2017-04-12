observe({
    updateSelectInput(session,
                      inputId = "var_binomtest",
                      choices = names(data()),
                      selected = '')

})

observeEvent(input$finalok, {
    f_data <- final()[, sapply(final(), is.factor)]
    if (is.null(dim(f_data))) {
        k <- final() %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, inputId = "var_binomtest",
            choices = names(fdata))
        } else {
          updateSelectInput(session, 'var_binomtest', choices = names(f_data))
        }
})

d_binomtest <- eventReactive(input$submit_binomtest, {
	validate(need((input$var_binomtest != ''), 'Please select two variables.'))
    data <- final()[, c(input$var_binomtest)]
})

output$binomtest_out <- renderPrint({
  if (nlevels(d_binomtest()) > 2) {
    stop('Select a dichotomous variable.')
  } else {
    binom_test(d_binomtest(), input$binomtest_prob)
  }
    
})

output$binomcalc_out <- renderPrint({
    binom_calc(input$n_binomcalc, input$s_binomcalc, input$p_binomcalc)
})
