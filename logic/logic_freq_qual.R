source('helper/freq-cat.R')


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
    
})

# selected data
d_freq_qual <- eventReactive(input$submit_fqual, {
	validate(need(input$var_table != '', 'Please select a variable.'))
    data <- final()[, c(input$var_table)]
    fdata <- as.data.frame(data)
    names(fdata) <- input$var_table
    fdata
})


# output
output$freq_qual <- renderPrint({
    ki <- freq_table(d_freq_qual(), as.character(input$var_table))
    ki
})

output$qual_vert <- renderPlot({
    ki <- freq_table(d_freq_qual(), as.character(input$var_table))
    barplot(ki)
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
