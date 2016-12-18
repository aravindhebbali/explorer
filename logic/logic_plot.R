library(shiny)
source("line-plot.R")

# server begins here
shinyServer(function(input, output, session) {
    
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
    
    # update variable selection for scatter plots
    observe({
        updateSelectInput(session, 'line_select_x', choices = names(data()))
        updateSelectInput(session, 'line_select_y', choices = names(data()))
    })
    
    # selected data
    selected_x <- reactive({
        data()[, input$line_select_x]
    })
    
    selected_y <- reactive({
        data()[, input$line_select_y]
    })

    # dynamic UI for line colors
    output$ui_nlines <- renderUI({
        ncol <- as.integer(input$n_lines)
        
        lapply(1:ncol, function(i) {
            selectInput(paste("n_addline_", i),
                      label = paste0("n_addline", i),
                      choices = names(data()))
        })
    })

    addvars <- reactive({
        ncol <- as.integer(input$n_lines)
        
        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_addline_", i)]]
                    }))
        
        colors <- unlist(collect)
        
    })

    # dynamic UI for bar colors
    output$ui_ncolors <- renderUI({
        ncol <- as.integer(input$n_lines)
        
        lapply(1:ncol, function(i) {
            textInput(paste("n_addcol_", i),
                      label = paste0("n_addcol_", i),
                      value = "black")
        })
    })

    colours <- reactive({
        ncol <- as.integer(input$n_lines)
        
        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_addcol_", i)]]
                    }))
        
        colors <- unlist(collect)
        
    })

    selected_z <- reactive({
        data()[, addvars()]
    })

    nz <- reactive({
        ncol(selected_z())
    })

    # dynamic UI for line colors
    # output$ui_naddlines <- renderUI({
    #     ncol <- as.integer(input$naddlines)
        
    #     lapply(1:ncol, function(i) {
    #         selectInput(paste("n_addline_", i),
    #                   label = paste0("n_addline", i),
    #                   choices = names(data()))
    #     })
    # })

    # addvars <- reactive({
    #     ncol <- as.integer(input$naddlines)
        
    #     collect <- list(lapply(1:ncol, function(i) {
    #                     input[[paste("n_addline_", i)]]
    #                 }))
        
    #     colors <- unlist(collect)
        
    # })

    # # dynamic UI for bar colors
    # output$ui_naddcol <- renderUI({
    #     ncol <- as.integer(input$naddcol)
        
    #     lapply(1:ncol, function(i) {
    #         textInput(paste("n_addcol_", i),
    #                   label = paste0("n_addcol_", i),
    #                   value = "black")
    #     })
    # })

    # colours <- reactive({
    #     ncol <- as.integer(input$naddcol)
        
    #     collect <- list(lapply(1:ncol, function(i) {
    #                     input[[paste("n_addcol_", i)]]
    #                 }))
        
    #     colors <- unlist(collect)
        
    # })

    # # dynamic UI for legend names
    # output$ui_legnames <- renderUI({
    #     ncol <- as.integer(input$leg_names)
        
    #     lapply(1:ncol, function(i) {
    #         textInput(paste("n_names_", i),
    #                   label = paste0("n_names", i))
    #     })
    # })

    # # dynamic UI for legend border
    # output$ui_legline <- renderUI({
    #     ncol <- as.integer(input$leg_line)
        
    #     lapply(1:ncol, function(i) {
    #         numericInput(paste("n_line_", i),
    #                   label = paste0("n_line", i), value = 1)
    #     })
    # })

    
    # # dynamic UI for legend border
    # output$ui_legpoint <- renderUI({
    #     ncol <- as.integer(input$leg_point)
        
    #     lapply(1:ncol, function(i) {
    #         numericInput(paste("n_point_", i),
    #                   label = paste0("n_point", i), value = 1)
    #     })
    # })

    # # vector of legend names
    # name <- reactive({
    #     ncol <- as.integer(input$leg_names)
        
    #     collect <- list(lapply(1:ncol, function(i) {
    #         input[[paste("n_names_", i)]]
    #     }))
        
    #     names <- unlist(collect)
        
    # })
    
    # # vector of line types
    # lines <- reactive({
    #     ncol <- as.integer(input$leg_line)
        
    #     collect <- list(lapply(1:ncol, function(i) {
    #         input[[paste("n_line_", i)]]
    #     }))
        
    #     names <- unlist(collect)
        
    # })

    
    # # vector of point types
    # point <- reactive({
    #     ncol <- as.integer(input$leg_point)
        
    #     collect <- list(lapply(1:ncol, function(i) {
    #         input[[paste("n_point_", i)]]
    #     }))
        
    #     names <- unlist(collect)
        
    # })

    # # updated data after additional variables selected 
    # new_y <- reactive({
    #   data()[, c(input$line_select_y, addvars())]
    # })

    output$ui_yrange_min <- renderUI({
    df <- inFile()
    if (is.null(df)) return(NULL)
    numericInput('y_range_min', 'Y Axis Min', value = min(as.numeric(selected_x())))
    })

    output$ui_yrange_max <- renderUI({
    df <- inFile()
    if (is.null(df)) return(NULL)
    numericInput('y_range_max', 'Y Axis Max', value = max(as.numeric(selected_y())))
    })

    limits <- reactive({
        c(input$y_range_min, input$y_range_max)
    })
    


    # plot 1
    output$line_1 <- renderPlot({

      line_graph(selected_x(), selected_y(), title = input$line_title, subtitle = input$line_subtitle, 
        xlabel = input$line_xlabel, ylabel = input$line_ylabel
      )

    })

    # plot 2
    output$line_2 <- renderPlot({

      line_graph(selected_x(), selected_y(), input$line_style, input$line_type, input$line_width, 
        input$line_color,title = input$line_title, subtitle = input$line_subtitle, xlabel = input$line_xlabel, 
        ylabel = input$line_ylabel, input$add_points, input$point_shape, input$point_size, input$point_col, 
        input$point_bg
      )

    })

    # plot 3
    output$line_3 <- renderPlot({

      line_graph(selected_x(), selected_y(), input$line_style, input$line_type, input$line_width, 
        input$line_color,title = input$line_title, sub = input$line_subtitle, xlab = input$line_xlabel, 
        ylab = input$line_ylabel, input$add_points, input$point_shape, input$point_size, input$point_col, 
        input$point_bg, ylim_l = limits()[1], ylim_u = limits()[2], extra_lines = nz(), 
        extra_vars = selected_z(), extra_cols = colours())

    })

    # # plot 4
    # output$line_4 <- renderPlot({

    #   line_graph(selected_x(), selected_y(), input$line_style, input$line_type, input$line_width, 
    #     input$line_color,title = input$line_title, sub = input$line_subtitle, xlab = input$line_xlabel, 
    #     yalb = input$line_ylabel, input$add_points, input$point_shape, input$point_size, input$point_col, 
    #     input$point_bg, ylim_l = input$y_range_min, ylim_u = input$y_range_max, extra_lines = input$naddlines, 
    #     extra_vars = addvars(), extra_cols = colours(), leg = input$leg_yn, leg_x = input$leg_x, leg_y = input$leg_y, 
    #     legend = name(), leg_line = lines(), leg_point = point(), leg_colour = colours(), leg_boxtype = input$leg_boxtype, 
    #     leg_boxcol = input$leg_boxcol, leg_boxlty = input$leg_boxlty, leg_boxlwd = input$leg_boxlwd, 
    #     leg_boxborcol = input$leg_boxborcol, leg_boxxjust = input$leg_boxxjust, leg_boxyjust = input$leg_boxyjust, 
    #     leg_textcol = input$leg_textcol, leg_textfont = input$leg_textfont, leg_textcolumns = input$leg_textcolumns, 
    #     leg_texthoriz = input$leg_texthoriz, leg_title = input$leg_title, 
    #     leg_titlecol = input$leg_titlecol, leg_textadj = input$leg_textadj
    #   )

    # })


    # # plot 5
    # output$line_5 <- renderPlot({

    #   line_graph(selected_x(), selected_y(), input$line_style, input$line_type, input$line_width, 
    #     input$line_color,title = input$line_title, sub = input$line_subtitle, xlab = input$line_xlabel, 
    #     yalb = input$line_ylabel, input$add_points, input$point_shape, input$point_size, input$point_col, 
    #     input$point_bg, input$l_coltitle, input$l_colsub, input$l_colaxis,
    #         input$l_collabel, input$l_fontmain, input$l_fontsub,
    #         input$l_fontaxis, input$l_fontlab, input$l_cexmain,
    #         input$l_cexsub, input$l_cexaxis, input$l_cexlab,ylim_l = input$y_range_min, ylim_u = input$y_range_max, extra_lines = input$naddlines, 
    #     extra_vars = addvars(), extra_cols = colours(), leg = input$leg_yn, leg_x = input$leg_x, leg_y = input$leg_y, 
    #     legend = name(), leg_line = lines(), leg_point = point(), leg_colour = colours(), leg_boxtype = input$leg_boxtype, 
    #     leg_boxcol = input$leg_boxcol, leg_boxlty = input$leg_boxlty, leg_boxlwd = input$leg_boxlwd, 
    #     leg_boxborcol = input$leg_boxborcol, leg_boxxjust = input$leg_boxxjust, leg_boxyjust = input$leg_boxyjust, 
    #     leg_textcol = input$leg_textcol, leg_textfont = input$leg_textfont, leg_textcolumns = input$leg_textcolumns, 
    #     leg_texthoriz = input$leg_texthoriz, leg_title = input$leg_title, 
    #     leg_titlecol = input$leg_titlecol, leg_textadj = input$leg_textadj, input$l_plottext, input$l_text_x_loc, input$l_text_y_loc,
    #         input$l_textcolor, input$l_textfont, input$l_textsize,
    #         input$l_mtextplot, input$l_mtext_side, input$l_mtext_line,
    #         input$l_mtextadj, input$l_mtextcolor, input$l_mtextfont,
    #         input$l_mtextsize
    #   )

    # })


    # # final plot
    # output$line_final <- renderPlot({

    #   line_graph(selected_x(), selected_y(), input$line_style, input$line_type, input$line_width, 
    #     input$line_color,title = input$line_title, sub = input$line_subtitle, xlab = input$line_xlabel, 
    #     yalb = input$line_ylabel, input$add_points, input$point_shape, input$point_size, input$point_col, 
    #     input$point_bg, input$l_coltitle, input$l_colsub, input$l_colaxis,
    #         input$l_collabel, input$l_fontmain, input$l_fontsub,
    #         input$l_fontaxis, input$l_fontlab, input$l_cexmain,
    #         input$l_cexsub, input$l_cexaxis, input$l_cexlab,ylim_l = input$y_range_min, ylim_u = input$y_range_max, extra_lines = input$naddlines, 
    #     extra_vars = addvars(), extra_cols = colours(), leg = input$leg_yn, leg_x = input$leg_x, leg_y = input$leg_y, 
    #     legend = name(), leg_line = lines(), leg_point = point(), leg_colour = colours(), leg_boxtype = input$leg_boxtype, 
    #     leg_boxcol = input$leg_boxcol, leg_boxlty = input$leg_boxlty, leg_boxlwd = input$leg_boxlwd, 
    #     leg_boxborcol = input$leg_boxborcol, leg_boxxjust = input$leg_boxxjust, leg_boxyjust = input$leg_boxyjust, 
    #     leg_textcol = input$leg_textcol, leg_textfont = input$leg_textfont, leg_textcolumns = input$leg_textcolumns, 
    #     leg_texthoriz = input$leg_texthoriz, leg_title = input$leg_title, 
    #     leg_titlecol = input$leg_titlecol, leg_textadj = input$leg_textadj, input$l_plottext, input$l_text_x_loc, input$l_text_y_loc,
    #         input$l_textcolor, input$l_textfont, input$l_textsize,
    #         input$l_mtextplot, input$l_mtext_side, input$l_mtext_line,
    #         input$l_mtextadj, input$l_mtextcolor, input$l_mtextfont,
    #         input$l_mtextsize
    #   )

    # })
    
    # # plot download
    # output$line_downloadGraph <- downloadHandler(
        
    #     filename <- function() {
            
    #         paste(input$line_fileName, ".png")
    #     },
        
    #     content <- function(file) {
            
    #         png(file)
            
    #         plot <- line_graph(selected_x(), selected_y(), input$line_style,
    #                            input$line_type, input$line_width, input$line_color,
    #                            input$line_title, input$line_subtitle, 
    #                            input$line_xlabel, input$line_ylabel, input$line_coltitle, input$line_colsub, input$line_colaxis,
    #                            input$line_collabel, input$line_fontmain, input$line_fontsub,
    #                            input$line_fontaxis, input$line_fontlab, input$line_cexmain,
    #                            input$line_cexsub, input$line_cexaxis, input$line_cexlab,
    #                            input$line_plottext, input$line_text_x_loc, input$line_text_y_loc,
    #                            input$line_textcolor, input$line_textfont, input$line_textsize,
    #                            input$line_mtextplot, input$line_mtext_side, input$line_mtext_line,
    #                            input$line_mtextadj, input$line_mtextcolor, input$line_mtextfont,
    #                            input$line_mtextsize)
            
    #         print(plot)
            
    #         dev.off()
            
    #     } 
    # )
    
})
