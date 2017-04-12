# main regression
all_use_n <- reactive({
	k <- model()
	m <- k$model
	mf <- model.frame(m)
	nf <- mf[[1]]
	nam <- names(mf)
	mtrix <- model.matrix(m)[, -1]
	d <- as.data.frame(cbind(nf, mtrix))
	colnames(d)[1] <- nam[1]
	f <- paste0(nam[1], " ~ .")
	n <- lm(f, data = d)
	n
})

# all subset
d_allsub <- eventReactive(input$submit_allsub, {
	validate(need((input$allsub_fmla != ''), 'Please specify model'))
    data <- final()
})

allsub_model <- reactive({
  model <- lm(input$allsub_fmla, data = d_allsub())
	model
})

output$allsub_out <- renderPrint({
	if (input$all_use_model) {
		all_subset(all_use_n())
	} else {
    all_subset(allsub_model())
		# allsub_model()
	}
})

output$allsub_plot <- renderPlot({
	if (input$all_use_model) {
		plot(all_subset(all_use_n()))
	} else {
    plot(all_subset(allsub_model()))
	}
})


# best subset regression
d_bestsub <- eventReactive(input$submit_bestsub, {
	validate(need((input$bestsub_fmla != ''), 'Please specify model'))
    data <- final()
})

bestsub_model <- reactive({
  model <- lm(input$bestsub_fmla, data = d_bestsub())
	model
})

output$bestsub_out <- renderPrint({
	if (input$best_use_prev) {
		best_subset(all_use_n())
	} else {
    best_subset(bestsub_model())
	}
})

output$bestsub_plot <- renderPlot({
	if (input$best_use_prev) {
		plot(best_subset(all_use_n()))
	} else {
    plot(best_subset(bestsub_model()))
	}
})

# stepwise regression
d_stepwise <- eventReactive(input$submit_stepwise, {
	validate(need((input$stepwise_fmla != ''), 'Please specify model'))
    data <- final()
})

stepwise_model <- reactive({
  model <- lm(input$stepwise_fmla, data = d_stepwise())
	model
})

output$stepwise_out <- renderPrint({
	if (input$step_use_prev) {
		stepwise(all_use_n(), input$stepwise_pent, input$stepwise_prem,
      as.logical(input$stepwise_details))
	} else {
		stepwise(stepwise_model(), input$stepwise_pent, input$stepwise_prem,
      as.logical(input$stepwise_details))
	}
})

output$stepwise_plot <- renderPlot({
	if (input$step_use_prev) {
		plot(stepwise(all_use_n(), input$stepwise_pent, input$stepwise_prem,
      as.logical(input$stepwise_details)))
	} else {
    plot(stepwise(stepwise_model(), input$stepwise_pent, input$stepwise_prem,
      as.logical(input$stepwise_details)))
	}
})


# stepwise forward regression
d_forward <- eventReactive(input$submit_forward, {
	validate(need((input$forward_fmla != ''), 'Please specify model'))
    data <- final()
})

forward_model <- reactive({
  model <- lm(input$forward_fmla, data = d_forward())
	model
})


output$forward_out <- renderPrint({
	if (input$stepf_use_model) {
		step_forward(all_use_n(), input$forward_pent,
      as.logical(input$forward_details))
	} else {
		step_forward(forward_model(), input$forward_pent,
      as.logical(input$forward_details))
	}
})

output$forward_plot <- renderPlot({
	if (input$stepf_use_model) {
		plot(step_forward(all_use_n(), input$forward_pent,
      as.logical(input$forward_details)))
	} else {
    plot(step_forward(forward_model(), input$forward_pent,
      as.logical(input$forward_details)))
	}
})

# stepwise backward regression
d_backward <- eventReactive(input$submit_backward, {
	validate(need((input$backward_fmla != ''), 'Please specify model'))
    data <- final()
})

backward_model <- reactive({
  model <- lm(input$backward_fmla, data = d_backward())
	model
})


output$backward_out <- renderPrint({
	if (input$stepb_use_model) {
		step_backward(all_use_n(), input$backward_prem,
      as.logical(input$backward_details))
	} else {
		step_backward(backward_model(), input$backward_prem,
      as.logical(input$backward_details))
	}
})

output$backward_plot <- renderPlot({
	if (input$stepb_use_model) {
		plot(step_backward(all_use_n(), input$backward_prem,
      as.logical(input$backward_details)))
	} else {
    plot(step_backward(backward_model(), input$backward_prem,
      as.logical(input$backward_details)))
	}
})

# stepaic forward regression
d_aicforward <- eventReactive(input$submit_aicforward, {
	validate(need((input$aicforward_fmla != ''), 'Please specify model'))
    data <- final()
})

aicforward_model <- reactive({
  model <- lm(input$aicforward_fmla, data = d_aicforward())
	model
})

output$aicforward_out <- renderPrint({
	if (input$stepaicf_use_model) {
		stepaic_forward(all_use_n(), as.logical(input$aicforward_details))
	} else {
		stepaic_forward(aicforward_model(), as.logical(input$aicforward_details))
	}
})

output$aicforward_plot <- renderPlot({
	if (input$stepaicf_use_model) {
		plot(stepaic_forward(all_use_n(), as.logical(input$aicforward_details)))
	} else {
    plot(stepaic_forward(aicforward_model(), as.logical(input$aicforward_details)))
	}
})


# stepaic backward regression
d_aicbackward <- eventReactive(input$submit_aicbackward, {
	validate(need((input$aicbackward_fmla != ''), 'Please specify model'))
    data <- final()
})

aicbackward_model <- reactive({
  model <- lm(input$aicbackward_fmla, data = d_aicbackward())
	model
})


output$aicbackward_out <- renderPrint({
	if (input$stepaicb_use_model) {
		stepaic_backward(all_use_n(),
      as.logical(input$aicbackward_details))
	} else {
		stepaic_backward(aicbackward_model(),
      as.logical(input$aicbackward_details))
	}
})

output$aicbackward_plot <- renderPlot({
	if (input$stepaicb_use_model) {
		plot(stepaic_backward(all_use_n(),
      as.logical(input$aicbackward_details)))
	} else {
		plot(stepaic_backward(aicbackward_model(),
      as.logical(input$aicbackward_details)))
	}
})

# stepaic both direction regression
d_aicboth <- eventReactive(input$submit_aicboth, {
	validate(need((input$aicboth_fmla != ''), 'Please specify model'))
    data <- final()
})

aicboth_model <- reactive({
  model <- lm(input$aicboth_fmla, data = d_aicboth())
	model
})


output$aicboth_out <- renderPrint({
	if (input$saicbo_use_model) {
		stepaic_both(all_use_n(),
      as.logical(input$aicboth_details))
	} else {
		stepaic_both(aicboth_model(),
      as.logical(input$aicboth_details))
	}
})

output$aicboth_plot <- renderPlot({
	if (input$saicbo_use_model) {
		plot(stepaic_both(all_use_n(),
      as.logical(input$aicboth_details)))
	} else {
		plot(stepaic_both(aicboth_model(),
      as.logical(input$aicboth_details)))
	}
})
