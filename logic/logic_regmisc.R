# response diagnostics
d_pred_diag <- eventReactive(input$submit_pdiag, {
	validate(need((input$pdiag_fmla != ''), 'Please specify model'))
    data <- final()
})

pdiag_mod <- eventReactive(input$submit_pdiag, {
	k <- lm(input$pdiag_fmla, data = d_pred_diag())
  k
})

output$pdiagdata <- renderPrint({
  pdiag_mod()
})

# output$preddiag_plot <- renderPlot({
#   if (input$pdiag_use_prev) {
#     pred_diag(all_use_n())
#   } else {
#     pred_diag(pdiag_mod())
#   }
# })

# fitted line properties
observe({
    updateSelectInput(session,
      inputId = "resp_fline",
      choices = names(data()),
      selected = '')
    updateSelectInput(session,
        inputId = "pred_fline",
        choices = names(data()),
        selected = '')
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    updateSelectInput(session,
                      inputId = "resp_fline",
                      choices = names(num_data))
    updateSelectInput(session, inputId = "pred_fline",
      choices = names(num_data))

})

d_fline <- eventReactive(input$submit_fline, {
	validate(need((input$resp_fline != '' & input$pred_fline != ''), 'Please select two variables.'))
    data <- final()[, c(input$resp_fline, input$pred_fline)]
})

output$fline_plot <- renderPlot({
    reg_line(d_fline()[[1]], d_fline()[[2]])
})
