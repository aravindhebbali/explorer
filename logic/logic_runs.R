observe({
    updateSelectInput(session, 'var_runs', choices = names(data()))
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    if (is.null(dim(num_data))) {
            k <- final() %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'var_runs',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'var_runs',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'var_runs', choices = names(num_data))
        }
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
