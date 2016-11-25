source('helpers/frequency_final.R')

# summary
observe({
    updateSelectInput(session,
                      inputId = "var_table",
                      choices = names(data()),
                      selected = '')
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.factor)]
    updateSelectInput(session,
                      inputId = "var_table",
                      choices = names(num_data))

    if (is.factor(num_data)) {

      updateCheckboxGroupInput(session,
                             inputId = 'filter_qual',
                             choices = levels(num_data[, 1]),
                             selected = ''
      )

    }
    
})

# selected data
d_freq_qual <- eventReactive(input$submit_fqual, {
	validate(need(input$var_table != '', 'Please select a variable.'))
    data <- final()[, c(input$var_table)]
})

# filter data
observe({
  updateCheckboxGroupInput(session,
                           inputId = 'filter_qual',
                           choices = levels(d_freq_qual()),
                           selected = levels(d_freq_qual())
  )
})

# # filters
fil_qual_data <- reactive({
    p <- length(input$filter_qual)
    f_data <- c()
    for(i in seq_len(p)) {
      fd <- d_freq_qual()[d_freq_qual() == input$filter_qual[i]]
      f_data <- c(f_data, fd)
    }
    f_data
})

# output
output$freq_qual <- renderPrint({
    ki <- freq_table(fil_qual_data())
    ki
})

output$qual_vert <- renderPlot({
    ki <- freq_table(fil_qual_data())
    j <- as.numeric(ki$ftable[, 2])
    h <- j 
    ymax <- max(h)
    cols <- length(j)
    x_names <- ki$ftable[, 1]
    k <- barplot(j, col = topo.colors(cols),
                 main = paste('Bar Plot of', input$name_freq_qual),
                 xlab = input$name_freq_qual, 
                 ylab = 'Frequency', 
                 ylim = c(0, ymax[1]),
                 names.arg = x_names)
    text(k, h, labels = j, adj = 0.5, pos = 1)

})

output$qual_horiz <- renderPlot({
    ki <- freq_table(fil_qual_data())
    j <- as.numeric(ki$ftable[, 2])
    h <- j 
    ymax <- max(h)
    cols <- length(j)
    x_names <- ki$ftable[, 1]
    k <- barplot(j, col = topo.colors(cols), horiz = T,
                 main = paste('Bar Plot of', input$name_freq_qual),
                 xlab = 'Frequency', 
                 ylab = input$name_freq_qual, 
                 names.arg = x_names)

})


# download
output$download_freq_qual <- downloadHandler(
    
    filename = function() {
      paste('freq-qual-report', sep = '.', 'pdf')
    },

    content = function(file) {
      src <- normalizePath('freq_qual.Rmd')

      # temporarily switch to the temp dir, in case you do not have write
      # permission to the current working directory
      owd <- setwd(tempdir())
      on.exit(setwd(owd))
      file.copy(src, 'freq_qual.Rmd')

      library(rmarkdown)
      out <- render('freq_qual.Rmd', pdf_document())
      file.rename(out, file)
    }
)

# output$bar_freq_qual <- renderPlot({

# 	ko <- freq_table(d_freq_qual())	
# 	barplot.freq_table(ko)

# })