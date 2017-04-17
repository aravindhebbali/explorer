# importing data
inFile <- reactive({
    if(is.null(input$file)) {
        return(NULL)
    } else {
        input$file
    }
})
    
data <- reactive({
    if(is.null(inFile())) {
        return(NULL)
    } else {
        read.csv(inFile()$datapath,
            header = input$header,
            sep = input$sep,
            quote = input$quote)
    }
})
    

