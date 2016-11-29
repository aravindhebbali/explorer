output$binom_shape <- renderPlot({
  binom_plot(input$binom_n, input$binom_p)
})

output$bprob_plot <- renderPlot({
  binom_prob(input$bprob_n, input$bprob_p, input$bprob_s, input$bprob_tail)
})

output$bperc_plot <- renderPlot({
  binom_perc(input$bperc_n, input$bperc_p, input$bperc_tp, input$bperc_tail)
})
