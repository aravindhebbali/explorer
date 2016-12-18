library(shiny)
source("helper/bbox-plot.R")


    # update variable selection for bar plots
    observe({
        updateSelectInput(session, 'bbox_select_x', choices = names(data()))
        updateSelectInput(session, 'bbox_select_y', choices = names(data()))
    })

    observeEvent(input$finalok, {

        num_data <- final()[, sapply(final(), is.numeric)]
        f_data <- final()[, sapply(final(), is.factor)]
        updateSelectInput(session, 'bbox_select_x', choices = names(f_data))
        updateSelectInput(session, 'bbox_select_y', choices = names(num_data))
    })

    # selected data
    bbox_x <- reactive({
        box_data <- final()[, input$bbox_select_x]
    })

    bbox_y <- reactive({
        box_data <- final()[, input$bbox_select_y]
    })

    # dynamic UI for histogram colors
    output$ui_ncolhist <- renderUI({
        ncol <- as.integer(input$ncolhist)

        lapply(1:ncol, function(i) {
            textInput(paste("n_col_", i),
                      label = paste0("n_col", i))
        })
    })

    colours <- reactive({
        ncol <- as.integer(input$ncolhist)

        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_col_", i)]]
                    }))

        colors <- unlist(collect)

    })

    # dynamic UI for histogram border colors
    output$ui_nborhist <- renderUI({
        ncol <- as.integer(input$nborhist)

        lapply(1:ncol, function(i) {
            textInput(paste("n_bor_", i),
                      label = paste0("n_bor_", i))
        })
    })

    borders <- reactive({
        ncol <- as.integer(input$nborhist)

        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_bor_", i)]]
                    }))

        colors <- unlist(collect)

    })

    # dynamic UI for shading density
    output$ui_nhistdensity <- renderUI({
        ncol <- as.integer(input$nhistdensity)

        lapply(1:ncol, function(i) {
            numericInput(paste("n_histdensity_", i),
                      label = paste0("n_histdensity_", i),
                      value = 1, min = 1)
        })
    })

    density <- reactive({
        ncol <- as.integer(input$nhistdensity)

        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_histdensity_", i)]]
                    }))

        colors <- unlist(collect)

    })

    # dynamic UI for shading angle
    output$ui_nhistangle <- renderUI({
        ncol <- as.integer(input$nhistangle)

        lapply(1:ncol, function(i) {
            numericInput(paste("n_histangle_", i),
                      label = paste0("n_histangle_", i),
                      value = 1, min = 1)
        })
    })

    angle <- reactive({
        ncol <- as.integer(input$nhistangle)

        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_histangle_", i)]]
                    }))

        colors <- unlist(collect)

    })

    # dynamic UI for histogram binning intervals
    output$ui_nbin_intervals <- renderUI({
        ncol <- as.integer(input$bin_intervals) + 1

        lapply(1:ncol, function(i) {
            numericInput(paste("n_bin_int", i),
                      label = paste0("n_bin_int", i), value = 1)
        })
    })

    binints <- reactive({
        ncol <- as.integer(input$bin_intervals) + 1

        collect <- list(lapply(1:ncol, function(i) {
            input[[paste("n_bin_int", i)]]
        }))

        colors <- unlist(collect)

    })

    # dynamic UI for legend names
    output$ui_box2_legnames <- renderUI({
        ncol <- as.integer(input$box2_leg_names)

        lapply(1:ncol, function(i) {
            textInput(paste("n_namesbox2_", i),
                      label = paste0("n_namesbox2", i))
        })
    })


    # dynamic UI for legend border
    output$ui_box2_legpoint <- renderUI({
        ncol <- as.integer(input$box2_leg_point)

        lapply(1:ncol, function(i) {
            numericInput(paste("n_pointbox2_", i),
                      label = paste0("n_pointbox2", i), value = 1)
        })
    })

    # vector of legend names
    name_box2 <- reactive({
        ncol <- as.integer(input$box2_leg_names)

        collect <- list(lapply(1:ncol, function(i) {
            input[[paste("n_namesbox2_", i)]]
        }))

        names <- unlist(collect)

    })



    # vector of point types
    point_box2 <- reactive({
        ncol <- as.integer(input$box2_leg_point)

        collect <- list(lapply(1:ncol, function(i) {
            input[[paste("n_pointbox2_", i)]]
        }))

        names <- unlist(collect)

    })




    # bar plot
    output$bbox_plot_1 <- renderPlot({

        box_plotb(bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel)

    })

    output$bbox_plot_2 <- renderPlot({

        box_plotb(bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel, horiz = as.logical(input$bbox_horiz),
            notches = as.logical(input$bbox_notch), ranges = input$bbox_range, outlines = as.logical(input$bbox_outline),
            varwidths = as.logical(input$bbox_varwidth))

    })

    output$bbox_plot_3 <- renderPlot({

        box_plotb(bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel, horiz = as.logical(input$bbox_horiz),
            notches = as.logical(input$bbox_notch), ranges = input$bbox_range, outlines = as.logical(input$bbox_outline),
            varwidths = as.logical(input$bbox_varwidth), color = colours_box2(), borders = borders_box2(),
            labels = labels_box2())

    })

    output$bbox_plot_4 <- renderPlot({

        box_plotb(bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel, horiz = as.logical(input$bbox_horiz),
            notches = as.logical(input$bbox_notch), ranges = input$bbox_range, outlines = as.logical(input$bbox_outline),
            varwidths = as.logical(input$bbox_varwidth), color = colours_box2(), borders = borders_box2(),
            labels = labels_box2(), text_p = input$bbox_plottext, text_x_loc = input$bbox_text_x_loc,
            text_y_loc = input$bbox_text_y_loc, text_col = input$bbox_textcolor, text_font = input$bbox_textfont,
            text_size = input$bbox_textsize, m_text = input$bbox_mtextplot, m_side = input$bbox_mtext_side,
            m_line = input$bbox_mtext_line, m_adj = input$bbox_mtextadj, m_col = input$bbox_mtextcolor,
            m_font = input$bbox_mtextfont, m_cex = input$bbox_mtextsize)

    })


    # bar plot
    output$bbox_plot_4 <- renderPlot({

        box_plotb(
            bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel, horiz = as.logical(input$bbox_horiz),
            notches = as.logical(input$bbox_notch), ranges = input$bbox_range, outlines = as.logical(input$bbox_outline),
            varwidths = as.logical(input$bbox_varwidth), color = colours_box2(), borders = borders_box2(),
            labels = labels_box2(), leg = input$box2_leg_yn, leg_x = input$box2_leg_x, leg_y = input$box2_leg_y,
            legend = name_box2(), leg_point = point_box2(), leg_colour = colours_box2(), leg_boxtype = input$box2_leg_boxtype,
            leg_boxcol = input$box2_leg_boxcol, leg_boxlty = input$box2_leg_boxlty, leg_boxlwd = input$box2_leg_boxlwd,
            leg_boxborcol = input$box2_leg_boxborcol, leg_boxxjust = input$box2_leg_boxxjust, leg_boxyjust = input$box2_leg_boxyjust,
            leg_textcol = input$box2_leg_textcol, leg_textfont = input$box2_leg_textfont, leg_textcolumns = input$box2_leg_textcolumns,
            leg_texthoriz = input$box2_leg_texthoriz, leg_title = input$box2_leg_title,
            leg_titlecol = input$box2_leg_titlecol, leg_textadj = input$box2_leg_textadj
        )
    })

    # bar plot
    output$bbox_plot_5 <- renderPlot({

        box_plotb(
            bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel, horiz = as.logical(input$bbox_horiz),
            notches = as.logical(input$bbox_notch), ranges = input$bbox_range, outlines = as.logical(input$bbox_outline),
            varwidths = as.logical(input$bbox_varwidth), color = colours_box2(), borders = borders_box2(),
            labels = labels_box2(), leg = input$box2_leg_yn, leg_x = input$lbox2_leg_x, leg_y = input$box2_leg_y,
            legend = name_box2(), leg_point = point_box2(), leg_colour = colours_box2(), leg_boxtype = input$box2_leg_boxtype,
            leg_boxcol = input$box2_leg_boxcol, leg_boxlty = input$box2_leg_boxlty, leg_boxlwd = input$box2_leg_boxlwd,
            leg_boxborcol = input$box2_leg_boxborcol, leg_boxxjust = input$box2_leg_boxxjust, leg_boxyjust = input$box2_leg_boxyjust,
            leg_textcol = input$box2_leg_textcol, leg_textfont = input$box2_leg_textfont, leg_textcolumns = input$box2_leg_textcolumns,
            leg_texthoriz = input$box2_leg_texthoriz, leg_title = input$box2_leg_title,
            leg_titlecol = input$box2_leg_titlecol, leg_textadj = input$box2_leg_textadj,
            text_p = input$bbox_plottext, text_x_loc = input$bbox_text_x_loc,
            text_y_loc = input$bbox_text_y_loc, text_col = input$bbox_textcolor, text_font = input$bbox_textfont,
            text_size = input$bbox_textsize, m_text = input$bbox_mtextplot, m_side = input$bbox_mtext_side,
            m_line = input$bbox_mtext_line, m_adj = input$bbox_mtextadj, m_col = input$bbox_mtextcolor,
            m_font = input$bbox_mtextfont, m_cex = input$bbox_mtextsize
        )
    })

    # bar plot
    output$bbox_plot_6 <- renderPlot({

        box_plotb(
            bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel, horiz = as.logical(input$bbox_horiz),
            notches = as.logical(input$bbox_notch), ranges = input$bbox_range, outlines = as.logical(input$bbox_outline),
            varwidths = as.logical(input$bbox_varwidth), color = colours_box2(), borders = borders_box2(),
            labels = labels_box2(), input$bbox_coltitle, input$bbox_colsub, input$bbox_colaxis,
            input$bbox_collabel, fontmain = input$bbox_fontmain, fontsub = input$bbox_fontsub,
            fontaxis = input$bbox_fontaxis, fontlab = input$bbox_fontlab, input$bbox_cexmain,
            input$bbox_cexsub, input$bbox_cexaxis, input$bbox_cexlab,
            leg = input$box2_leg_yn, leg_x = input$lbox2_leg_x, leg_y = input$box2_leg_y,
            legend = name_box2(), leg_point = point_box2(), leg_colour = colours_box2(), leg_boxtype = input$box2_leg_boxtype,
            leg_boxcol = input$box2_leg_boxcol, leg_boxlty = input$box2_leg_boxlty, leg_boxlwd = input$box2_leg_boxlwd,
            leg_boxborcol = input$box2_leg_boxborcol, leg_boxxjust = input$box2_leg_boxxjust, leg_boxyjust = input$box2_leg_boxyjust,
            leg_textcol = input$box2_leg_textcol, leg_textfont = input$box2_leg_textfont, leg_textcolumns = input$box2_leg_textcolumns,
            leg_texthoriz = input$box2_leg_texthoriz, leg_title = input$box2_leg_title,
            leg_titlecol = input$box2_leg_titlecol, leg_textadj = input$box2_leg_textadj,
            text_p = input$bbox_plottext, text_x_loc = input$bbox_text_x_loc,
            text_y_loc = input$bbox_text_y_loc, text_col = input$bbox_textcolor, text_font = input$bbox_textfont,
            text_size = input$bbox_textsize, m_text = input$bbox_mtextplot, m_side = input$bbox_mtext_side,
            m_line = input$bbox_mtext_line, m_adj = input$bbox_mtextadj, m_col = input$bbox_mtextcolor,
            m_font = input$bbox_mtextfont, m_cex = input$bbox_mtextsize
        )
    })

    # bar plot
    output$bbox_plot_final <- renderPlot({

        box_plotb(
            bbox_x(), bbox_y(), title = input$bbox_title, subs = input$bbox_subtitle,
            xlabel = input$bbox_xlabel, ylabel = input$bbox_ylabel, horiz = as.logical(input$bbox_horiz),
            notches = as.logical(input$bbox_notch), ranges = input$bbox_range, outlines = as.logical(input$bbox_outline),
            varwidths = as.logical(input$bbox_varwidth), color = colours_box2(), borders = borders_box2(),
            labels = labels_box2(), input$bbox_coltitle, input$bbox_colsub, input$bbox_colaxis,
            input$bbox_collabel, fontmain = input$bbox_fontmain, fontsub = input$bbox_fontsub,
            fontaxis = input$bbox_fontaxis, fontlab = input$bbox_fontlab, input$bbox_cexmain,
            input$bbox_cexsub, input$bbox_cexaxis, input$bbox_cexlab,
            leg = input$box2_leg_yn, leg_x = input$lbox2_leg_x, leg_y = input$box2_leg_y,
            legend = name_box2(), leg_point = point_box2(), leg_colour = colours_box2(), leg_boxtype = input$box2_leg_boxtype,
            leg_boxcol = input$box2_leg_boxcol, leg_boxlty = input$box2_leg_boxlty, leg_boxlwd = input$box2_leg_boxlwd,
            leg_boxborcol = input$box2_leg_boxborcol, leg_boxxjust = input$box2_leg_boxxjust, leg_boxyjust = input$box2_leg_boxyjust,
            leg_textcol = input$box2_leg_textcol, leg_textfont = input$box2_leg_textfont, leg_textcolumns = input$box2_leg_textcolumns,
            leg_texthoriz = input$box2_leg_texthoriz, leg_title = input$box2_leg_title,
            leg_titlecol = input$box2_leg_titlecol, leg_textadj = input$box2_leg_textadj,
            text_p = input$bbox_plottext, text_x_loc = input$bbox_text_x_loc,
            text_y_loc = input$bbox_text_y_loc, text_col = input$bbox_textcolor, text_font = input$bbox_textfont,
            text_size = input$bbox_textsize, m_text = input$bbox_mtextplot, m_side = input$bbox_mtext_side,
            m_line = input$bbox_mtext_line, m_adj = input$bbox_mtextadj, m_col = input$bbox_mtextcolor,
            m_font = input$bbox_mtextfont, m_cex = input$bbox_mtextsize
        )
    })

    # plot download
    # output$box_downloadGraph <- downloadHandler(

    #     filename <- function() {

    #         paste(input$box_fileName, ".png")
    #     },

    #     content <- function(file) {

    #         png(file)

    #         plot <- box_plot(
    #             box_plotu(
    #                 selectedVar(),
    #                 input$box_col, input$box_bordercol, input$box_title,
    #                 input$box_subtitle, input$box_xlabel, input$box_ylabel,
    #                 input$box_coltitle, input$box_colsub, input$box_colaxis,
    #                 input$box_collabel, input$box_fontmain, input$box_fontsub,
    #                 input$box_fontaxis, input$box_fontlab, input$box_cexmain,
    #                 input$box_cexsub, input$box_cexaxis, input$box_cexlab,
    #                 input$box_plottext, input$box_text_x_loc, input$box_text_y_loc,
    #                 input$box_textcolor, input$box_textfont, input$box_textsize,
    #                 input$box_mtextplot, input$box_mtext_side, input$box_mtext_line,
    #                 input$box_mtextadj, input$box_mtextcolor, input$box_mtextfont,
    #                 input$box_mtextsize
    #             )
    #         )

    #         print(plot)

    #         dev.off()

    #     }
    # )
