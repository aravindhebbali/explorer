# Breusch Pagan Test
d_het_bp <- eventReactive(input$submit_het_bp, {
	validate(need((input$het_bp_fmla != ''), 'Please specify model'))
    data <- final()
})

mnames <- eventReactive(input$submit_regress, {
    k <- colnames(model.matrix(model()$model)[, -1])
    k
})


het_bp_mod <- eventReactive(input$submit_het_bp, {
	k <- lm(input$het_bp_fmla, data = d_het_bp())
  k
})

bpvars <- eventReactive(input$submit_het_bp, {
    k <- colnames(model.matrix(het_bp_mod())[, -1])
    k
})

observe({
  if (input$het_bp_fv == FALSE) {
    if (input$bp_use_prev) {
      updateSelectInput(session, inputId = "het_bp_vars", choices = mnames(),
          selected = mnames()[1])
    } else {
      updateSelectInput(session, inputId = "het_bp_vars", choices = bpvars(),
          selected = bpvars()[1])
    }
  } else {
    if (input$bp_use_prev) {
      updateSelectInput(session, inputId = "het_bp_vars", choices = mnames(),
          selected = '')
    } else {
      updateSelectInput(session, inputId = "het_bp_vars", choices = bpvars(),
          selected = '')
    }
  }
})

output$het_bp_out <- renderPrint({
  if (input$het_bp_fv == FALSE) {
    if (input$bp_use_prev) {
      ols_bp_test(all_use_n(), as.logical(input$het_bp_fv), as.logical(input$het_bp_rhs),
        as.logical(input$het_bp_mult), as.character(input$het_bp_padj), input$het_bp_vars)
    } else {
      ols_bp_test(het_bp_mod(), as.logical(input$het_bp_fv), as.logical(input$het_bp_rhs),
        as.logical(input$het_bp_mult), as.character(input$het_bp_padj), input$het_bp_vars)
    }
  } else {
    if (input$bp_use_prev) {
      ols_bp_test(all_use_n(), as.logical(input$het_bp_fv), as.logical(input$het_bp_rhs),
        as.logical(input$het_bp_mult), as.character(input$het_bp_padj))
    } else {
      ols_bp_test(het_bp_mod(), as.logical(input$het_bp_fv), as.logical(input$het_bp_rhs),
        as.logical(input$het_bp_mult), as.character(input$het_bp_padj))
    }
  }
})

# f test for heteroskedasticity
d_het_f <- eventReactive(input$submit_het_f, {
	validate(need((input$het_f_fmla != ''), 'Please specify model'))
    data <- final()
})

het_f_mod <- eventReactive(input$submit_het_f, {
	k <- lm(input$het_f_fmla, data = d_het_f())
  k
})

fvars <- eventReactive(input$submit_het_f, {
    k <- colnames(model.matrix(het_f_mod())[, -1])
    k
})

observe({
  if (input$het_f_fv == FALSE) {
    if (input$f_use_prev) {
      updateSelectInput(session, inputId = "het_f_vars", choices = mnames(),
          selected = mnames()[1])
    } else {
      updateSelectInput(session, inputId = "het_f_vars", choices = fvars(),
          selected = fvars()[1])
    }
  } else {
    if (input$f_use_prev) {
      updateSelectInput(session, inputId = "het_f_vars", choices = mnames(),
          selected = '')
    } else {
      updateSelectInput(session, inputId = "het_f_vars", choices = fvars(),
          selected = '')
    }
  }
})

output$het_f_out <- renderPrint({
  if (input$het_f_fv == FALSE) {
    if (input$f_use_prev) {
      ols_f_test(all_use_n(), as.logical(input$het_f_fv), as.logical(input$het_f_rhs),
        input$het_f_vars)
    } else {
      ols_f_test(het_f_mod(), as.logical(input$het_f_fv), as.logical(input$het_f_rhs),
        input$het_f_vars)
    }
  } else {
    if (input$f_use_prev) {
      ols_f_test(all_use_n(), as.logical(input$het_f_fv), as.logical(input$het_f_rhs))
    } else {
      ols_f_test(het_f_mod(), as.logical(input$het_f_fv), as.logical(input$het_f_rhs))
    }
  }
})


# score test
d_het_score <- eventReactive(input$submit_het_score, {
	validate(need((input$het_score_fmla != ''), 'Please specify model'))
    data <- final()
})

het_score_mod <- eventReactive(input$submit_het_score, {
	k <- lm(input$het_score_fmla, data = d_het_score())
  k
})

scorevars <- eventReactive(input$submit_het_score, {
    k <- colnames(model.matrix(het_score_mod())[, -1])
    k
})

observe({
  if (input$het_score_fv == FALSE) {
    if (input$score_use_prev) {
      updateSelectInput(session, inputId = "het_score_vars", choices = mnames(),
          selected = mnames()[1])
    } else {
      updateSelectInput(session, inputId = "het_score_vars", choices = scorevars(),
          selected = scorevars()[1])
    }
  } else {
    if (input$score_use_prev) {
      updateSelectInput(session, inputId = "het_score_vars", choices = mnames(),
          selected = '')
    } else {
      updateSelectInput(session, inputId = "het_score_vars", choices = scorevars(),
          selected = '')
    }
  }
})

output$het_score_out <- renderPrint({
  if (input$het_score_fv == FALSE) {
    if (input$score_use_prev) {
      ols_score_test(all_use_n(), as.logical(input$het_score_fv), as.logical(input$het_score_rhs),
        input$het_score_vars)
    } else {
      ols_score_test(het_score_mod(), as.logical(input$het_score_fv), as.logical(input$het_score_rhs),
        input$het_score_vars)
    }
  } else {
    if (input$score_use_prev) {
      ols_score_test(all_use_n(), as.logical(input$het_score_fv), as.logical(input$het_score_rhs))
    } else {
      ols_score_test(het_score_mod(), as.logical(input$het_score_fv), as.logical(input$het_score_rhs))
    }
  }
})


# bartlett test
observe({
  updateSelectInput(session,inputId = "var_bartest",
    choices = names(data()), selected = '')
  updateSelectInput(session,inputId = "var_bartestg1",
    choices = names(data()), selected = '')
  updateSelectInput(session,inputId = "var_bartestg2",
    choices = names(data()), selected = '')
})

observeEvent(input$finalok, {
    f_data <- final()[, sapply(final(), is.factor)]
    num_data <- final()[, sapply(final(), is.numeric)]
    updateSelectInput(session, inputId = "var_bartest", choices = names(num_data))
    updateSelectInput(session, inputId = "var_bartestg1", choices = names(num_data))
    updateSelectInput(session, inputId = "var_bartestg2", choices = names(f_data))
})

d_bartest <- eventReactive(input$submit_bartest, {
	validate(need((input$var_bartest != ''), 'Please select variables'))
    data <- final()[, c(input$var_bartest)]
})

d_bartestg <- eventReactive(input$submit_bartestg, {
	validate(need((input$var_bartestg1 != '' & input$var_bartestg2 != ''), 'Please select variables'))
    data <- final()[, c(input$var_bartestg1, input$var_bartestg2)]
})

output$bartest_out <- renderPrint({
    ols_bartlett_test(d_bartest())
})

output$bartestg_out <- renderPrint({
    ols_bartlett_test(d_bartestg()[, 1], d_bartestg()[, 2])
})

d_bartmod <- eventReactive(input$submit_bartestf, {
	validate(need((input$bartest_fmla != ''), 'Please specify a model.'))
	data <- final()
})

bartmod <- reactive({
	k <- lm(input$bartest_fmla, data = d_bartmod())
	k
})

output$bartestf_out <- renderPrint({
    ols_bartlett_test(bartmod())
})
