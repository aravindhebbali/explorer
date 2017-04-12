observe({
    updateSelectInput(session, 'var_chiprop1', choices = names(data()))
})

observeEvent(input$finalok, {
    f_data <- final()[, sapply(final(), is.factor)]
    updateSelectInput(session, 'var_chiprop1', choices = names(f_data))
})

d_chiprop <- eventReactive(input$update_chiprop, {
	validate(need((input$var_chiprop1 != ''), 'Please select variable.'))
    data <- final()[, c(input$var_chiprop1)]
})

chiprop_lev <- reactive({
    nlevels(d_chiprop())
})

output$chiprop_prop <- renderUI({
    ncol <- chiprop_lev()
    if (ncol < 1) {
      NULL
    } else {
      lapply(1:ncol, function(i) {
          numericInput(paste0("chiprop_", i), label = paste0("Proportion ", i),
            value = 0.25, min = 0, max = 1, step = 0.1)
      })
    }
})

chiprops <- reactive({
    ncol <- chiprop_lev()
    if (ncol < 1) {
      proportions <- NULL
    } else {
      collect <- list(lapply(1:ncol, function(i) {
                      input[[paste0("chiprop_", i)]]
                  }))
      proportions <- unlist(collect)
    }
    proportions
})


df_chiprop <- eventReactive(input$submit_chiprop, {
	validate(need((input$var_chiprop1 != ''), 'Please select variables.'))
  data <- final()[, c(input$var_chiprop1)]
})

output$chiprop_out <- renderPrint({
  os_chisqgof(df_chiprop(), chiprops(), as.logical(input$chiprop_cc),
    input$chiprop_conf)
})
