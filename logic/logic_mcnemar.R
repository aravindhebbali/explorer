observe({
    updateSelectInput(session, 'var_mcnemar1', choices = names(data()))
    updateSelectInput(session, 'var_mcnemar2', choices = names(data()))
})

observeEvent(input$finalok, {
    f_data <- final()[, sapply(final(), is.factor)]
    if (is.null(dim(f_data))) {
        k <- final() %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, 'var_mcnemar1', choices = names(fdata))
    		updateSelectInput(session, 'var_mcnemar2', choices = names(fdata))
    } else {
          updateSelectInput(session, 'var_mcnemar1', choices = names(f_data))
    			updateSelectInput(session, 'var_mcnemar2', choices = names(f_data))
    }
})

d_mcnemar <- eventReactive(input$submit_mcnemar, {
	validate(need((input$var_mcnemar1 != '' & input$var_mcnemar2 != ''), 'Please select variables.'))
  data <- final()[, c(input$var_mcnemar1, input$var_mcnemar2)]
})

output$mcnemar_out <- renderPrint({
  mcnemar_test(table(d_mcnemar()[, 1], d_mcnemar()[, 2]))
})

output$mcnemarc_out <- renderPrint({
  mcnemar_test(matrix(c(input$mc_00, input$mc_10, input$mc_01, input$mc_11), nrow = 2))
})
