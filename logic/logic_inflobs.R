# dfbetas panel
d_dfbetas <- eventReactive(input$submit_dfbetas, {
	validate(need((input$dfbetas_fmla != ''), 'Please specify model'))
    data <- final()
})

dfbetas_mod <- eventReactive(input$submit_dfbetas, {
	k <- lm(input$dfbetas_fmla, data = d_dfbetas())
  k
})


output$dfbetas_panel <- renderPlot({
  if (input$dfb_use_prev) {
    dfbetas_panel(all_use_n())
  } else {
    dfbetas_panel(dfbetas_mod())
  }
})

# dffits plot
d_dffits <- eventReactive(input$submit_dffits, {
	validate(need((input$dffits_fmla != ''), 'Please specify model'))
    data <- final()
})

dfits_mod <- eventReactive(input$submit_dffits, {
	k <- lm(input$dffits_fmla, data = d_dffits())
  k
})


output$dffits_plot <- renderPlot({
  if (input$dfits_use_prev) {
    dffits_plot(all_use_n())
  } else {
    dffits_plot(dfits_mod())
  }
})

# cooks d bar plot
d_cdbp <- eventReactive(input$submit_cooksb, {
	validate(need((input$cooksb_fmla != ''), 'Please specify model'))
    data <- final()
})

cdbp_mod <- eventReactive(input$submit_cooksb, {
	k <- lm(input$cooksb_fmla, data = d_dffits())
  k
})


output$cooks_bplot <- renderPlot({
  if (input$cdbp_use_prev) {
    cooksd_bplot(all_use_n())
  } else {
    cooksd_bplot(cdbp_mod())
  }
})


# cooks d chart
d_cdc <- eventReactive(input$submit_cooksc, {
	validate(need((input$cooksc_fmla != ''), 'Please specify model'))
    data <- final()
})

cdc_mod <- eventReactive(input$submit_cooksc, {
	k <- lm(input$cooksc_fmla, data = d_cdc())
  k
})


output$cooks_chart <- renderPlot({
  if (input$cooksc_use_prev) {
    cooksd_chart(all_use_n())
  } else {
    cooksd_chart(cdc_mod())
  }
})

# hadi plot
d_hadi <- eventReactive(input$submit_hadiplot, {
	validate(need((input$hadiplot_fmla != ''), 'Please specify model'))
    data <- final()
})

hadi_mod <- eventReactive(input$submit_hadiplot, {
	k <- lm(input$hadiplot_fmla, data = d_hadi())
  k
})


output$hadi_plot <- renderPlot({
  if (input$hadip_use_prev) {
    hadi_plot(all_use_n())
  } else {
    hadi_plot(hadi_mod())
  }
})
