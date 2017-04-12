observe({
    updateSelectInput(session,
                      inputId = "var_anova1",
                      choices = names(data()),
                      selected = '')
    updateSelectInput(session,
      inputId = "var_anova2",
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
        updateSelectInput(session, inputId = "var_anova2",
            choices = names(fdata))
        } else {
          updateSelectInput(session, 'var_anova2', choices = names(f_data))
        }
    updateSelectInput(session,
                      inputId = "var_anova1",
                      choices = names(num_data))

})

d_anova <- eventReactive(input$submit_anova, {
	validate(need((input$var_anova1 != '' & input$var_anova2 != ''), 'Please select two variables.'))
    data <- final()[, c(input$var_anova1, input$var_anova2)]
    eval(parse(text = paste0("data$", names(data)[2], " <- as.numeric(as.character(data$", names(data)[2], "))")))
    data
})

output$anova_out <- renderPrint({
    inferr::owanova(d_anova(), as.character(input$var_anova1), as.character(input$var_anova2))
})
