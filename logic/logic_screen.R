# logic
source('helpers/screen_function.R')

# output
output$screener <- renderPrint({
    screening(final())
})