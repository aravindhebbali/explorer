source('helper/freq-cat.R')


# observe({
#     updateSelectInput(session,
#                       inputId = "var_table",
#                       choices = names(data()),
#                       selected = '')
# })

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.factor)]
    if (is.null(dim(num_data))) {
      k <- final() %>% map(is.factor) %>% unlist()
      j <- names(which(k == TRUE))
      f_data <- tibble::as_data_frame(num_data)
      colnames(f_data) <- j
      updateSelectInput(session,
                        inputId = "var_table",
                        choices = names(f_data))
    } else {
      updateSelectInput(session,
                      inputId = "var_table",
                      choices = names(num_data))

    }
    
    
})

# selected data
d_freq_qual <- eventReactive(input$submit_fqual, {
	validate(need(input$var_table != '', 'Please select a variable.'))
    data <- final()[, c(input$var_table)]
    fdata <- as.data.frame(data)
    names(fdata) <- input$var_table
    fdata
})

fqual_out <- eventReactive(input$submit_fqual, {
  ki <- freq_table(d_freq_qual(), as.character(input$var_table))
  ki
})

# output
output$freq_qual <- renderPrint({
  fqual_out()
})

output$qual_vert <- renderPlot({
    barplot(fqual_out())
})

# output$qual_horiz <- renderPlot({
#     ki <- freq_table(fil_qual_data())
#     j <- as.numeric(ki$ftable[, 2])
#     h <- j
#     ymax <- max(h)
#     cols <- length(j)
#     x_names <- ki$ftable[, 1]
#     k <- barplot(j, col = topo.colors(cols), horiz = T,
#                  main = paste('Bar Plot of', input$name_freq_qual),
#                  xlab = 'Frequency',
#                  ylab = input$name_freq_qual,
#                  names.arg = x_names)

# })
