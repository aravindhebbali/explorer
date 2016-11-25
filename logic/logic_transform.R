library(stringr)
    
    output$ui_ncol <- renderUI({
        ncol <- as.integer(ncol(data()))
        
        lapply(1:ncol, function(i) {
            selectInput(paste("n_col_", i),
                        label = '', width = '150px',
                        choices = names(data())[i],
                        selected  = names(data())[i])
        })
    })
    
    
    output$ui_datatype <- renderUI({
        ncol <- as.integer(ncol(data()))
        
        lapply(1:ncol, function(i) {
            selectInput(paste("data_type_", i),
                        label = '',  width = '150px',
                        choices = c('numeric', 'factor', 'Date', 'character', 'integer'),
                        selected = 'numeric')
        })
    })

    output$ui_datetype <- renderUI({
        ncol <- as.integer(ncol(data()))
        
        lapply(1:ncol, function(i) {
            conditionalPanel(paste(paste("data_type_", i), "== 'Date'"),
                 selectInput(paste("date_type_", i),
                        label = '',  width = '150px',
                        choices = c('%d %m %y', '%d %m %Y', '%y %m %d', '%Y %m %d', '%d %y %m', '%d %Y %m',
                            '%m %d %y', '%m %d %Y', '%y %d %m', '%Y %d %m', '%m %y %d', '%m %Y %d',
                            '%d/%m/%y', '%d/%m/%Y', '%y/m /%d', '%Y/%m/%d', '%d/%y/%m', '%d/%Y/%m',
                            '%m/%d/%y', '%m/%d/%Y', '%y/%d/%m', '%Y/%d/%m', '%m/%y/%d', '%m/%Y/%d',
                            '%d-%m-%y', '%d-%m-%Y', '%y-m -%d', '%Y-%m-%d', '%d-%y-%m', '%d-%Y-%m',
                            '%m-%d-%y', '%m-%d-%Y', '%y-%d-%m', '%Y-%d-%m', '%m-%y-%d', '%m-%Y-%d'
                        ),
                        selected = '%Y %m %d')
            )
        })
    })

    output$ui_rename <- renderUI({
        ncol <- as.integer(ncol(data()))
        
        lapply(1:ncol, function(i) {
            textInput(paste("new_name_", i),
                        label = '',  width = '150px',
                        value = names(data())[i])
        })
    })
    
    original <- reactive({
        data()
    })
    
    save_names <- reactive({
        names(original())
    })
    
    n <- reactive({
        length(original())
    })
    
    data_types <- reactive({
        ncol <- as.integer(ncol(data()))
        
        collect <- list(lapply(1:ncol, function(i) {
            input[[paste("data_type_", i)]]
        }))
        
        colors <- unlist(collect)
    })

    new_names <- reactive({
        ncol <- as.integer(ncol(data()))
        
        collect <- list(lapply(1:ncol, function(i) {
            input[[paste("new_name_", i)]]
        }))
        
        colors <- unlist(collect)
        colnames <- str_replace(colors, " ", "_")
    })
    
    

        copy <- eventReactive(input$apply_changes, {
        out <- list()
        
        for (i in seq_len(n())) {
            
            if (data_types()[i] == 'Date') {
                inp <- eval(parse(text = paste0('input$', paste0('date_type_', i))))
                out[[i]] <- eval(parse(text = paste0("as.", data_types()[i], "(original()$", save_names()[i], ", ", inp, ")")))
            } else {
                out[[i]] <- eval(parse(text = paste0("as.", data_types()[i], "(original()$", save_names()[i], ")")))
            }
            
            
        }
        names(out) <- new_names()
        return(out)
        })
    
        final <- eventReactive(input$apply_changes, {
            data.frame(copy(), stringsAsFactors = F)
        })

    



    
    