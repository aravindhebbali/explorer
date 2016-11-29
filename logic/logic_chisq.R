output$chisq_shape <- renderPlot({
  chisq_plot(input$chisq_df, input$chisq_norm)
})

output$chiprob_plot <- renderPlot({
  binom_prob(input$chiprob_p, input$chiprob_df, input$chiprob_tail)
})

output$chiperc_plot <- renderPlot({
  chi_per(input$chiperc_p, input$chiperc_df, input$chiperc_tail)
})
