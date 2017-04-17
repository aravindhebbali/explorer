d_cprp_mod <- eventReactive(input$submit_cprp_plot, {
  validate(need((input$cprp_fmla != ''), 'Please specify model'))
    data <- final()
})

cprp_mod <- reactive({
  k <- lm(input$cprp_fmla, data = d_cprp_mod())
  k
})

cprplot <- eventReactive(input$submit_cprp_plot, {
  if(input$cprp_use_prev) {
    ols_rpc_plot(all_use_n())
  } else {
    ols_rpc_plot(cprp_mod())
  }
})

output$cprplot <- renderPlot({
  cprplot()
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


avplot <- eventReactive(input$submit_avplot, {
  if (input$advar_use_prev) {
    ols_avplots(all_use_n())
  } else {
    ols_avplots(diag_advar_mod())
  }
})

output$avplot <- renderPlot({
  avplot()
})


d_resreg_mod <- eventReactive(input$submit_resreg_plot, {
  validate(need((input$resreg_fmla != ''), 'Please specify model'))
    data <- final()
})

resreg_mod <- reactive({
  k <- lm(input$resreg_fmla, data = d_resreg_mod())
  k
})

# plot_n <- reactive({
#   if (input$resreg_use_prev) {
#     out <- length(all_use_n()$coefficients) * 500
#   } else {
#     out <- length(resreg_mod()$coefficients) * 500
#   }
#   out
# })

observe({
    updateSelectInput(session,
                      inputId = "resreg_var",
                      choices = names(data()),
                      selected = '')
})

observeEvent(input$finalok, {
    updateSelectInput(session,
                      inputId = "resreg_var",
                      choices = names(final()))
})


d_resreg <- eventReactive(input$submit_resreg_plot, {
  validate(need((input$resreg_var != ''), 'Please select a variable.'))
    data <- tibble::as_data_frame(final()[, c(input$resreg_var)])
    data
})

rvsrplot <- eventReactive(input$submit_resreg_plot, {
  if(input$resreg_use_prev) {
    rvsr_plot_shiny(all_use_n(), final(), as.character(input$resreg_var))
  } else {
    rvsr_plot_shiny(resreg_mod(), final(), as.character(input$resreg_var))
  }
})

output$rvsrplot <- renderPlot({
  rvsrplot()
})


# # collinearity diagnostics
# d_diag_coll <- eventReactive(input$submit_colldiag, {
# 	validate(need((input$collin_fmla != ''), 'Please specify model'))
#     data <- final()
# })


# diag_coll_mod <- eventReactive(input$submit_colldiag, {
# 	k <- lm(input$collin_fmla, data = d_diag_coll())
#   k
# })


# output$colldiag <- renderPrint({
#   if (input$colldiag_use_prev) {
#     coll_diag(all_use_n())
#   } else {
#     coll_diag(diag_coll_mod())
#   }
# })


# # Correlations
# d_diag_corr <- eventReactive(input$submit_corrs, {
# 	validate(need((input$corrs_fmla != ''), 'Please specify model'))
#     data <- final()
# })


# diag_corr_mod <- eventReactive(input$submit_corrs, {
# 	k <- lm(input$corrs_fmla, data = d_diag_corr())
#   k
# })


# output$corrs_out <- renderPrint({
#   if (input$corr_use_prev) {
#     correlations(all_use_n())
#   } else {
#     correlations(diag_corr_mod())
#   }
# })


# # lack of fit f test
# d_diag_lackf <- eventReactive(input$submit_lackf, {
# 	validate(need((input$lackf_fmla != ''), 'Please specify model'))
#     data <- final()
# })


# diag_lackf_mod <- eventReactive(input$submit_lackf, {
# 	k <- lm(input$lackf_fmla, data = d_diag_lackf())
#   k
# })


# output$lackf_out <- renderPrint({
#   if (input$corr_use_prev) {
#     pure_error_anova(all_use_n())
#   } else {
#     pure_error_anova(diag_lackf_mod())
#   }
# })

# # added variable plot
# d_diag_advar <- eventReactive(input$submit_avplot, {
# 	validate(need((input$avplot_fmla != ''), 'Please specify model'))
#     data <- final()
# })


# diag_advar_mod <- eventReactive(input$submit_avplot, {
# 	k <- lm(input$avplot_fmla, data = d_diag_advar())
#   k
# })


# output$avplot <- renderPlot({
#   if (input$advar_use_prev) {
#     addvar_plot(all_use_n())
#   } else {
#     addvar_plot(diag_advar_mod())
#   }
# })

# # observed vs predicted plot
# d_diag_ovsp <- eventReactive(input$submit_obspred, {
# 	validate(need((input$obspred_fmla != ''), 'Please specify model'))
#     data <- final()
# })


# diag_ovsp_mod <- eventReactive(input$submit_obspred, {
# 	k <- lm(input$obspred_fmla, data = d_diag_ovsp())
#   k
# })


# output$obspred_plot <- renderPlot({
#   if (input$ovsp_use_prev) {
#     ovsp_plot(all_use_n())
#   } else {
#     ovsp_plot(diag_ovsp_mod())
#   }
# })
