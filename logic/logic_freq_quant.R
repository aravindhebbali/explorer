source('helper/freq-cont.R')

# descriptive statistics
# observe({
#     updateSelectInput(session,
#                       inputId = "var_freq_quant",
#                       choices = names(data()),
#                       selected = '')
    
# })

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    if (is.null(dim(num_data))) {
        k <- final() %>% map(is.numeric) %>% unlist()
        j <- names(which(k == TRUE))
        numdata <- tibble::as_data_frame(num_data)
        colnames(numdata) <- j
        updateSelectInput(session, inputId = "var_freq_quant",
          choices = names(numdata))
        updateSliderInput(session = session, 
          inputId = 'filter_quant',
          min = min(numdata),
          max = max(numdata),
          step = 1,
          value = c(min(numdata), max(numdata))
        )
      } else if (ncol(num_data) < 1) {
        updateSelectInput(session, inputId = "var_freq_quant",
            choices = '', selected = '')
        updateSliderInput(session = session, 
                        inputId = 'filter_quant',
                        value = '')
      } else {
          updateSelectInput(session, 'var_freq_quant', 
            choices = names(num_data), selected = names(num_data))
          updateSliderInput(session = session, 
                        inputId = 'filter_quant',
                        min = min(num_data),
                        max = max(num_data),
                        step = 1,
                        value = c(min(num_data), max(num_data))
          )
      }
    
    
})

# selected data
d_freq_quant <- eventReactive(input$submit_fquant, {
	validate(need(input$var_freq_quant != '', 'Please select a variable.'))
    data <- final()[, input$var_freq_quant]
})

# update filter slider
observe({
  updateSliderInput(session = session, 
                      inputId = 'filter_quant',
                      min = min(d_freq_quant()),
                      max = max(d_freq_quant()),
                      step = 1,
                      value = c(min(d_freq_quant()), max(d_freq_quant()))
    )
})

# # filters
fil_quant_data <- reactive({

  min_data <- input$filter_quant[1]
  max_data <- input$filter_quant[2]

  # f_data <- d_summary()[d_summary()[, 1] >= min_data & d_summary()[, 1] <= max_data, 1]
  f_data <- d_freq_quant()[d_freq_quant() >= min_data & d_freq_quant() <= max_data]
  fdata <- as.data.frame(f_data)
  names(fdata) <- as.character(input$var_freq_quant)
  fdata
})

fquant_out <- eventReactive(input$submit_fquant, {
  ko <- freq_cont(fil_quant_data(), as.character(input$var_freq_quant), input$bins)
  ko
})

output$freq_quant <- renderPrint({
  fquant_out()
})

output$hist_freq_quant <- renderPlot({
	hist(fquant_out())
})


