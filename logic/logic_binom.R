output$binom_shape <- renderPlot({
  binom_plot(input$binom_n, input$binom_p)
})
