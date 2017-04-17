observe({
  updateSelectInput(session,inputId = "var_tsproptest1",
    choices = names(data()), selected = '')
  updateSelectInput(session,inputId = "var_tsproptestg1",
    choices = names(data()), selected = '')
  updateSelectInput(session,inputId = "var_tsproptest2",
    choices = names(data()), selected = '')
  updateSelectInput(session,inputId = "var_tsproptestg2",
    choices = names(data()), selected = '')
})

observeEvent(input$finalok, {
    f_data <- final()[, sapply(final(), is.factor)]
    if (is.null(dim(f_data))) {
        k <- final() %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, inputId = "var_tsproptest1", choices = names(fdata))
        updateSelectInput(session, inputId = "var_tsproptest2", choices = names(fdata))
        updateSelectInput(session, inputId = "var_tsproptestg1", choices = names(fdata))
        updateSelectInput(session, inputId = "var_tsproptestg2", choices = names(fdata))
    } else {
          updateSelectInput(session, inputId = "var_tsproptest1", choices = names(f_data))
          updateSelectInput(session, inputId = "var_tsproptest2", choices = names(f_data))
          updateSelectInput(session, inputId = "var_tsproptestg1", choices = names(f_data))
          updateSelectInput(session, inputId = "var_tsproptestg2", choices = names(f_data))
        }
})

d_tsproptest <- eventReactive(input$submit_tsproptest, {
	validate(need((input$var_tsproptest1 != '' & input$var_tsproptest2 != ''), 'Please select variable.'))
    data <- final()[, c(input$var_tsproptest1, input$var_tsproptest2)]
})

d_tsproptestg <- eventReactive(input$submit_tsproptestg, {
	validate(need((input$var_tsproptestg1 != '' & input$var_tsproptestg2 != ''), 'Please select variable.'))
    data <- final()[, c(input$var_tsproptestg1, input$var_tsproptestg2)]
})

output$tsproptest_out <- renderPrint({
    ts_prop_test(d_tsproptest()[, 1], d_tsproptest()[, 2], input$tsproptest_type)
})

output$tsproptestg_out <- renderPrint({
  validate(need(nlevels(d_tsproptestg()[, 2]) == 2, 'Please select a binary variable.'))
  ts_prop_grp(d_tsproptestg()[, 1], d_tsproptestg()[, 2], input$tsproptestg_type)
  # if (nlevels(d_tsproptestg()[, 2]) > 2) {
  #   stop('Select a dichotomous variable.')
  # } else {
  #   ts_prop_grp(d_tsproptestg()[, 1], d_tsproptestg()[, 2], input$tsproptestg_type)
  # }
})

output$tspropcalc_out <- renderPrint({
    ts_prop_calc(input$n1_tspropcalc, input$n2_tspropcalc, input$prop_tspropcalc1,
      input$prop_tspropcalc2, input$tspropcalc_type)
})
