source("helper/bbar-plot.R")



    # update variable selection for bar plots
    observe({
        updateSelectInput(session, 'bar2_select_x', choices = names(data()))
        updateSelectInput(session, 'bar2_select_y', choices = names(data()))
    })

    observeEvent(input$finalok, {

        f_data <- final()[, sapply(final(), is.factor)]
        updateSelectInput(session, 'bar2_select_x', choices = names(f_data))
        updateSelectInput(session, 'bar2_select_y', choices = names(f_data))

    })

    # selected data
    selected_x <- reactive({
        bar_data <- final()[, input$bar2_select_x]
    })

    selected_y <- reactive({
        bar_data <- final()[, input$bar2_select_y]
    })

    counts_bar2 <- reactive({
        table(selected_x(), selected_y())
    })

    # dynamic UI for bar colors
    output$ui_ncolbar2 <- renderUI({
        ncol <- as.integer(input$ncolbar2)
        if (ncol < 1) {
          NULL
        } else {
          lapply(1:ncol, function(i) {
              textInput(paste("n_bar2col_", i),
                        label = paste0("n_bar2col", i))
          })
        }
    })

    colours_bar2 <- reactive({
        ncol <- as.integer(input$ncolbar2)
        if (ncol < 1) {
          colors <- NULL
        } else {
          collect <- list(lapply(1:ncol, function(i) {
                          input[[paste("n_bar2col_", i)]]
                      }))
          colors <- unlist(collect)
        }
        colors
    })

    # dynamic UI for bar border colors
    output$ui_nborbar2 <- renderUI({
        ncol <- as.integer(input$nborbar2)
        if (ncol < 1) {
          NULL
        } else {
          lapply(1:ncol, function(i) {
              textInput(paste("n_bor2_", i),
                        label = paste0("n_bor2_", i))
          })
        }
    })

    borders_bar2 <- reactive({
        ncol <- as.integer(input$nborbar2)
        if (ncol < 1) {
          colors <- NULL
        } else {
          collect <- list(lapply(1:ncol, function(i) {
                          input[[paste("n_bor2_", i)]]
                      }))
          colors <- unlist(collect)
        }
        colors
    })


    # dynamic UI for bar labels
    output$ui_nbarlabel2 <- renderUI({
        ncol <- as.integer(input$nbarlabel2)
        if (ncol < 1) {
          NULL
        } else {
          lapply(1:ncol, function(i) {
              textInput(paste("n_bar2label_", i),
                        label = paste0("n_bar2label_", i))
          })
        }
    })

    labels_bar2 <- reactive({
        ncol <- as.integer(input$nbarlabel2)
        if (ncol < 1) {
          colors <- NULL
        } else {
          collect <- list(lapply(1:ncol, function(i) {
                          input[[paste("n_bar2label_", i)]]
                      }))
          colors <- unlist(collect)
        }
        colors
    })

    # dynamic UI for bar width
    output$ui_nbarwidth2 <- renderUI({
        ncol <- as.integer(input$nbarwidth2)
        if (ncol < 1) {
          NULL
        } else {
          lapply(1:ncol, function(i) {
              numericInput(paste("n_bar2width_", i),
                        label = paste0("n_bar2width_", i),
                        value = 1, min = 1)
          })
        }
    })

    widths_bar2 <- reactive({
        ncol <- as.integer(input$nbarwidth2)
        if (ncol < 1) {
          colors <- NULL
        } else {
          collect <- list(lapply(1:ncol, function(i) {
                          input[[paste("n_bar2width_", i)]]
                      }))
          colors <- unlist(collect)
        }
        colors
    })

    # dynamic UI for bar space
    # output$ui_nbarspace2 <- renderUI({
    #     ncol <- as.integer(input$nbarspace2)
    #
    #     lapply(1:ncol, function(i) {
    #         numericInput(paste("n_bar2space_", i),
    #                   label = paste0("n_bar2space_", i),
    #                   value = 0, min = 0, max = 2, step = 1)
    #     })
    # })
    #
    # spaces_bar2 <- reactive({
    #     ncol <- as.integer(input$nbarspace2)
    #
    #     collect <- list(lapply(1:ncol, function(i) {
    #                     input[[paste("n_bar2space_", i)]]
    #                 }))
    #
    #     colors <- unlist(collect)
    #
    # })

    # dynamic UI for shading density
    output$ui_nbardensity2 <- renderUI({
        ncol <- as.integer(input$nbardensity2)

        lapply(1:ncol, function(i) {
            numericInput(paste("n_bar2density_", i),
                      label = paste0("n_bar2density_", i),
                      value = 1, min = 1)
        })
    })

    density_bar2 <- reactive({
        ncol <- as.integer(input$nbardensity2)

        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_bar2density_", i)]]
                    }))

        colors <- unlist(collect)

    })

    # dynamic UI for shading angle
    output$ui_nbarangle2 <- renderUI({
        ncol <- as.integer(input$nbarangle2)

        lapply(1:ncol, function(i) {
            numericInput(paste("n_bar2angle_", i),
                      label = paste0("n_bar2angle_", i),
                      value = 1, min = 1)
        })
    })

    angle_bar2 <- reactive({
        ncol <- as.integer(input$nbarangle2)

        collect <- list(lapply(1:ncol, function(i) {
                        input[[paste("n_bar2angle_", i)]]
                    }))

        colors <- unlist(collect)

    })

    # dynamic UI for legend names
    output$ui_bar2_legnames <- renderUI({
        ncol <- as.integer(input$bar2_legnames)
        if (ncol < 1) {
          NULL
        } else {
          lapply(1:ncol, function(i) {
              textInput(paste("n_namesbar2_", i),
                        label = paste0("n_namesbar2", i))
          })
        }
    })


    # dynamic UI for legend border
    output$ui_bar2_legpoint <- renderUI({
        ncol <- as.integer(input$bar2_leg_point)
        if (ncol < 1) {
          NULL
        } else {
          lapply(1:ncol, function(i) {
              numericInput(paste("n_pointbar2_", i),
                        label = paste0("n_pointbar2", i), value = 15)
          })
        }
    })

    # vector of legend names
    name_bar2 <- reactive({
        ncol <- as.integer(input$bar2_legnames)
        if (ncol < 1) {
          names <- NULL
        } else {
          collect <- list(lapply(1:ncol, function(i) {
              input[[paste("n_namesbar2_", i)]]
          }))
          names <- unlist(collect)
        }
        names
    })

    # vector of point types
    point_bar2 <- reactive({
        ncol <- as.integer(input$bar2_leg_point)
        if (ncol < 1) {
          names <- NULL
        } else {
          collect <- list(lapply(1:ncol, function(i) {
              input[[paste("n_pointbar2_", i)]]
          }))
          names <- unlist(collect)
        }
        names
    })

    output$bbar_plot_1 <- renderPlot({
      barplot(height = counts_bar2(), horiz = as.logical(input$bar2_horiz),
        beside = as.logical(input$bar2_beside), main = input$bar2_title,
        xlab = input$bar2_xlabel, ylab =  input$bar2_ylabel)
    })

    output$bbar_plot_2 <- renderPlot({
      barplot(height = counts_bar2(), horiz = as.logical(input$bar2_horiz),
        beside = as.logical(input$bar2_beside), main = input$bar2_title,
        xlab = input$bar2_xlabel, ylab =  input$bar2_ylabel,
        col = colours_bar2(), border = borders_bar2(), width = widths_bar2(),
        names.arg = labels_bar2())
    })

    output$bbar_plot_3 <- renderPlot({
      barplot(height = counts_bar2(), horiz = as.logical(input$bar2_horiz),
        beside = as.logical(input$bar2_beside), main = input$bar2_title,
        xlab = input$bar2_xlabel, ylab =  input$bar2_ylabel,
        col = colours_bar2(), border = borders_bar2(), width = widths_bar2(),
        names.arg = labels_bar2(), density = density_bar(), angle = angle_bar(),
        axes = input$bar2_axes, axis.lty = input$bar2_axislty,
        offset = input$bar2_offset)
    })

    output$bbar_plot_4 <- renderPlot({
        bar_plotb(
                counts_bar2(), as.logical(input$bar2_horiz), colours_bar2(),
                borders_bar2(), besides = as.logical(input$bar2_beside),
                title = input$bar2_title, xlab = input$bar2_xlabel,
                labels_bar2(), widths_bar2(), density_bar2(),
                angle_bar2(), input$bar2_axes, input$bar2_axislty,
                input$bar2_offset, ylab =  input$bar2_ylabel,
                leg = as.logical(input$bar2_leg_yn), leg_x = input$bar2_leg_x,
                leg_y = input$bar2_leg_y, legend = name_bar2(),
                leg_point = point_bar2(), leg_colour = colours_bar2(),
                leg_boxtype = input$bar2_leg_boxtype,
                leg_boxcol = input$bar2_leg_boxcol,
                leg_boxlty = input$bar2_leg_boxlty,
                leg_boxlwd = input$bar2_leg_boxlwd,
                leg_boxborcol = input$bar2_leg_boxborcol,
                leg_boxxjust = input$bar2_leg_boxxjust,
                leg_boxyjust = input$bar2_leg_boxyjust,
                leg_textcol = input$bar2_leg_textcol,
                leg_textfont = input$bar2_leg_textfont,
                leg_textcolumns = input$bar2_leg_textcolumns,
                leg_texthoriz = input$bar2_leg_texthoriz,
                leg_title = input$bar2_leg_title,
                leg_titlecol = input$bar2_leg_titlecol,
                leg_textadj = input$bar2_leg_textadj)
    })

    output$bbar_plot_5 <- renderPlot({

            bar_plotb(
              counts_bar2(), as.logical(input$bar2_horiz), colours_bar2(),
              borders_bar2(), besides = as.logical(input$bar2_beside),
              title = input$bar2_title, xlab = input$bar2_xlabel,
              labels_bar2(), widths_bar2(), density_bar2(),
              angle_bar2(), input$bar2_axes, input$bar2_axislty,
              input$bar2_offset, ylab =  input$bar2_ylabel,
              leg = as.logical(input$bar2_leg_yn), leg_x = input$bar2_leg_x,
              leg_y = input$bar2_leg_y, legend = name_bar2(),
              leg_point = point_bar2(), leg_colour = colours_bar2(),
              leg_boxtype = input$bar2_leg_boxtype,
              leg_boxcol = input$bar2_leg_boxcol,
              leg_boxlty = input$bar2_leg_boxlty,
              leg_boxlwd = input$bar2_leg_boxlwd,
              leg_boxborcol = input$bar2_leg_boxborcol,
              leg_boxxjust = input$bar2_leg_boxxjust,
              leg_boxyjust = input$bar2_leg_boxyjust,
              leg_textcol = input$bar2_leg_textcol,
              leg_textfont = input$bar2_leg_textfont,
              leg_textcolumns = input$bar2_leg_textcolumns,
              leg_texthoriz = input$bar2_leg_texthoriz,
              leg_title = input$bar2_leg_title,
              leg_titlecol = input$bar2_leg_titlecol,
              leg_textadj = input$bar2_leg_textadj,
              colmain = input$bar2_coltitle,
              colaxis = input$bar2_colaxis, collab = input$bar2_collabel,
              cexmain = input$bar2_cexmain,
              cexaxis = input$bar2_cexaxis, cexlab = input$bar2_cexlab,
              fontmain = input$bar2_fontmain,
              fontaxis = input$bar2_fontaxis, fontlab = input$bar2_fontlab,
              input$bar2_plottext, input$bar2_text_x_loc, input$bar2_text_y_loc,
              input$bar2_textcolor, input$bar2_textfont, input$bar2_textsize,
              input$bar2_mtextplot, input$bar2_mtext_side, input$bar2_mtext_line,
              input$bar2_mtextadj, input$bar2_mtextcolor, input$bar2_mtextfont,
              input$bar2_mtextsize
            )
    })


    output$bbar_plot_final <- renderPlot({
      bar_plotb(
        counts_bar2(), as.logical(input$bar2_horiz), colours_bar2(),
        borders_bar2(), besides = as.logical(input$bar2_beside),
        title = input$bar2_title, xlab = input$bar2_xlabel,
        labels_bar2(), widths_bar2(), density_bar2(),
        angle_bar2(), input$bar2_axes, input$bar2_axislty,
        input$bar2_offset, ylab =  input$bar2_ylabel,
        leg = as.logical(input$bar2_leg_yn), leg_x = input$bar2_leg_x,
        leg_y = input$bar2_leg_y, legend = name_bar2(),
        leg_point = point_bar2(), leg_colour = colours_bar2(),
        leg_boxtype = input$bar2_leg_boxtype,
        leg_boxcol = input$bar2_leg_boxcol,
        leg_boxlty = input$bar2_leg_boxlty,
        leg_boxlwd = input$bar2_leg_boxlwd,
        leg_boxborcol = input$bar2_leg_boxborcol,
        leg_boxxjust = input$bar2_leg_boxxjust,
        leg_boxyjust = input$bar2_leg_boxyjust,
        leg_textcol = input$bar2_leg_textcol,
        leg_textfont = input$bar2_leg_textfont,
        leg_textcolumns = input$bar2_leg_textcolumns,
        leg_texthoriz = input$bar2_leg_texthoriz,
        leg_title = input$bar2_leg_title,
        leg_titlecol = input$bar2_leg_titlecol,
        leg_textadj = input$bar2_leg_textadj,
        colmain = input$bar2_coltitle,
        colaxis = input$bar2_colaxis, collab = input$bar2_collabel,
        cexmain = input$bar2_cexmain,
        cexaxis = input$bar2_cexaxis, cexlab = input$bar2_cexlab,
        fontmain = input$bar2_fontmain,
        fontaxis = input$bar2_fontaxis, fontlab = input$bar2_fontlab,
        input$bar2_plottext, input$bar2_text_x_loc, input$bar2_text_y_loc,
        input$bar2_textcolor, input$bar2_textfont, input$bar2_textsize,
        input$bar2_mtextplot, input$bar2_mtext_side, input$bar2_mtext_line,
        input$bar2_mtextadj, input$bar2_mtextcolor, input$bar2_mtextfont,
        input$bar2_mtextsize
      )
    })

    # plot download
    output$ubar_downloadGraph <- downloadHandler(

        filename <- function() {

            paste(input$ubar_fileName, ".png")
        },

        content <- function(file) {

            png(file)

            plot <-  bar_plotb(
                counts(), input$ubar_horiz,
                input$ubar_beside, input$ubar_barspace, input$ubar_title,
                input$ubar_subtitle, input$ubar_xlabel, input$ubar_ylabel,
                input$ubar_coltitle, input$ubar_colsub, input$ubar_colaxis,
                input$ubar_collabel, input$ubar_fontmain,
                input$ubar_fontaxis, input$ubar_fontlab, input$ubar_cexmain,
                input$ubar_cexsub, input$ubar_cexaxis, input$ubar_cexlab,
                input$ubar_plottext, input$ubar_text_x_loc, input$ubar_text_y_loc,
                input$ubar_textcolor, input$ubar_textfont, input$ubar_textsize,
                input$ubar_mtextplot, input$ubar_mtext_side, input$ubar_mtext_line,
                input$ubar_mtextadj, input$ubar_mtextcolor, input$ubar_mtextfont,
                input$ubar_mtextsize
            )

            print(plot)

            dev.off()

        }
    )
