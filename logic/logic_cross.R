source('helper/cross-table.R')

# summary
observe({
    updateSelectInput(session,
                      inputId = "var1_cross",
                      choices = names(data()),
                      selected = '')
    
    updateSelectInput(session,
                      inputId = "var2_cross",
                      choices = names(data()),
                      selected = '')
})

observeEvent(input$finalok, {

    num_data <- final()[, sapply(final(), is.factor)]

    updateSelectInput(session,
                      inputId = "var1_cross",
                      choices = names(num_data))

    updateSelectInput(session,
                      inputId = "var2_cross",
                      choices = names(num_data))
    if (dim(num_data)[2] != 0) {

      updateCheckboxGroupInput(session,
                             inputId = 'filter_cross1',
                             choices = levels(num_data[, 1]),
                             selected = ''
    )

      updateCheckboxGroupInput(session,
                               inputId = 'filter_cross2',
                               choices = levels(num_data[, 2]),
                               selected = ''
      )
        
    }
    
})

# selected data
d_cross <- eventReactive(input$submit_cross, {
    validate(need((input$var1_cross != '' & input$var2_cross != ''), 'Please select two variables.'))
    data <- final()[, c(input$var1_cross, input$var2_cross)]
})

# column names
conames <- reactive({
	colnames(d_cross())
})

# # filter data
# observe({

#   updateCheckboxGroupInput(session,
#                            inputId = 'filter_cross1',
#                            choices = levels(d_cross()[, 1]),
#                            selected = levels(d_cross()[, 1])
#   )

#   updateCheckboxGroupInput(session,
#                            inputId = 'filter_cross2',
#                            choices = levels(d_cross()[, 2]),
#                            selected = levels(d_cross()[, 2])
#   )

# })

# # # filters
# fil_cross1 <- reactive({
#     p <- length(input$filter_cross1)
#     f_data <- c()
#     for(i in seq_len(p)) {
#       fd <- d_cross()[, 1][d_cross()[, 1] == input$filter_cross1[i]]
#       f_data <- c(f_data, fd)
#     }
#     f_data
# })

# fil_cross2 <- reactive({
#     p <- length(input$filter_cross2)
#     f_data <- c()
#     for(i in seq_len(p)) {
#       fd <- d_cross()[, 2][d_cross()[, 2] == input$filter_cross2[i]]
#       f_data <- c(f_data, fd)
#     }
#     f_data
# })

# cross table
output$cross <- renderPrint({
  cross_table(d_cross(), as.character(input$var1_cross), 
    as.character(input$var2_cross))
})


output$cross_bar_stacked <- renderPlot({
	k <- cross_table(d_cross(), as.character(input$var1_cross), 
    as.character(input$var2_cross))
  plot(k)
})

output$cross_bar_grouped <- renderPlot({
	k <- cross_table(d_cross(), as.character(input$var1_cross), 
    as.character(input$var2_cross))
  plot(k, beside = TRUE)
})

output$cross_bar_proportional <- renderPlot({
  k <- cross_table(d_cross(), as.character(input$var1_cross), 
    as.character(input$var2_cross))
  plot(k, proportional = TRUE)
})

output$cross_mosaic_plot <- renderPlot({
	k <- cross_table(d_cross(), as.character(input$var1_cross), 
    as.character(input$var2_cross))
  mosaicplot(k)
})


