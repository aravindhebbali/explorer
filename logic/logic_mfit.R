d_diag_corr <- eventReactive(input$submit_corrs, {
	validate(need((input$corrs_fmla != ''), 'Please specify model'))
    data <- final()
})


diag_corr_mod <- eventReactive(input$submit_corrs, {
	k <- lm(input$corrs_fmla, data = d_diag_corr())
  k
})


output$corrs_out <- renderPrint({
  if (input$corr_use_prev) {
    correlations(all_use_n())
  } else {
    correlations(diag_corr_mod())
  }
})


# lack of fit f test
d_diag_lackf <- eventReactive(input$submit_lackf, {
	validate(need((input$lackf_fmla != ''), 'Please specify model'))
    data <- final()
})


diag_lackf_mod <- eventReactive(input$submit_lackf, {
	k <- lm(input$lackf_fmla, data = d_diag_lackf())
  k
})


output$lackf_out <- renderPrint({
  if (input$corr_use_prev) {
    pure_error_anova(all_use_n())
  } else {
    pure_error_anova(diag_lackf_mod())
  }
})

# added variable plot
d_diag_advar <- eventReactive(input$submit_avplot, {
	validate(need((input$avplot_fmla != ''), 'Please specify model'))
    data <- final()
})


diag_advar_mod <- eventReactive(input$submit_avplot, {
	k <- lm(input$avplot_fmla, data = d_diag_advar())
  k
})


output$avplot <- renderPlot({
  if (input$advar_use_prev) {
    addvar_plot(all_use_n())
  } else {
    addvar_plot(diag_advar_mod())
  }
})

# observed vs predicted plot
d_diag_ovsp <- eventReactive(input$submit_obspred, {
	validate(need((input$obspred_fmla != ''), 'Please specify model'))
    data <- final()
})


diag_ovsp_mod <- eventReactive(input$submit_obspred, {
	k <- lm(input$obspred_fmla, data = d_diag_ovsp())
  k
})


output$obspred_plot <- renderPlot({
  if (input$ovsp_use_prev) {
    ovsp_plot(all_use_n())
  } else {
    ovsp_plot(diag_ovsp_mod())
  }
})
