source('helpers/freq_cont_final.R')

# descriptive statistics
observe({
    updateSelectInput(session,
                      inputId = "var_freq_quant",
                      choices = names(data()),
                      selected = '')
    
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    updateSelectInput(session,
                      inputId = "var_freq_quant",
                      choices = names(num_data))
    updateSliderInput(session = session, 
                      inputId = 'filter_quant',
                      min = min(num_data),
                      max = max(num_data),
                      step = 1,
                      value = c(min(num_data), max(num_data))
    )
})

# selected data
d_freq_quant <- eventReactive(input$submit_fquant, {
	validate(need(input$var_freq_quant != '', 'Please select a variable and specify the label.'))
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
})


output$freq_quant <- renderPrint({
    freq_cont(fil_quant_data(), input$bins)
})

output$hist_freq_quant <- renderPlot({
	ko <- freq_cont(fil_quant_data(), input$bins)
	hist.freq_cont(ko, name = input$name_freq_quant)

})


output$box_freq_quant <- renderPlot({
	
	ko <- freq_cont(fil_quant_data(), input$bins)
	boxplot.freq_cont(ko, name = input$name_freq_quant)

})


# download
output$download_freq_quant <- downloadHandler(
    
    filename = function() {
      paste('my-report', sep = '.', 'pdf')
    },

    content = function(file) {
      src <- normalizePath('freq_quant.Rmd')

      # temporarily switch to the temp dir, in case you do not have write
      # permission to the current working directory
      owd <- setwd(tempdir())
      on.exit(setwd(owd))
      file.copy(src, 'freq_quant.Rmd')

      library(rmarkdown)
      out <- render('freq_quant.Rmd', pdf_document())
      file.rename(out, file)
    }
)