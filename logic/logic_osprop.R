observe({
    updateSelectInput(session,
                      inputId = "var_osproptest",
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
        updateSelectInput(session, inputId = "var_osproptest",
            choices = names(fdata))
        } else {
          updateSelectInput(session, 'var_osproptest', choices = names(f_data))
        }
})

d_osproptest <- eventReactive(input$submit_osproptest, {
	validate(need((input$var_osproptest != ''), 'Please select a variable.'))
    data <- final()[, c(input$var_osproptest)]
})

output$osproptest_out <- renderPrint({
    prop_test(d_osproptest(), input$osproptest_prob, input$osproptest_type)
})

output$ospropcalc_out <- renderPrint({
    prop_test(input$n_ospropcalc, input$p_ospropcalc, input$prob_ospropcalc,
      input$ospropcalc_type)
})
