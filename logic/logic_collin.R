# collinearity diagnostics
d_diag_coll <- eventReactive(input$submit_colldiag, {
	validate(need((input$collin_fmla != ''), 'Please specify model'))
    data <- final()
})


diag_coll_mod <- eventReactive(input$submit_colldiag, {
	k <- lm(input$collin_fmla, data = d_diag_coll())
  k
})


output$colldiag <- renderPrint({
  if (input$colldiag_use_prev) {
    ols_coll_diag(all_use_n())
  } else {
    ols_coll_diag(diag_coll_mod())
  }
})
