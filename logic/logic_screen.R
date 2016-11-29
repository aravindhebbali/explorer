# output
output$screener <- renderPrint({
    screener(final())
})