source('helpers/sumary_stat.R')

# summary
observe({
    updateSelectInput(session = session,
                      inputId = "var_summary",
                      choices = names(data()))
})

observeEvent(input$finalok, {
    num_data <- final()[, sapply(final(), is.numeric)]
    f_data <- final()[, sapply(final(), is.factor)]
    updateSelectInput(session = session,
                      inputId = "var_summary",
                      choices = names(num_data),
                      selected = names(num_data))

    updateSliderInput(session = session, 
                      inputId = 'filter_summary',
                      min = min(num_data),
                      max = max(num_data),
                      step = 1,
                      value = c(min(num_data), max(num_data))
    )

    # updateSelectInput(session = session,
    #                   inputId = "var_fsummary",
    #                   choices = names(f_data),
    #                   selected = names(f_data))

    # updateCheckboxGroupInput(session,
    #                          inputId = 'check_summary',
    #                          choices = levels(f_data[, 1]),
    #                          selected = levels(f_data[, 1])
    # )
})

# f_data <- reactive({
#   final()[, sapply(final(), is.factor)]
# })

# # filter data
# f_summary <- reactive({
#   data <- final()[, input$var_fsummary]
# })


# selected data
d_summary <- eventReactive(input$submit_summary, {
  validate(need(input$var_summary != '', 'Please select a variable.'))
    data <- final()[, c(input$var_summary)]
})


# update filter slider
observe({
  updateSliderInput(session = session, 
                      inputId = 'filter_summary',
                      min = min(d_summary()),
                      max = max(d_summary()),
                      step = 1,
                      value = c(min(d_summary()), max(d_summary()))
    )
})

# # filter categorical data
# observe({
#   updateCheckboxGroupInput(session,
#                            inputId = 'check_summary',
#                            choices = levels(f_summary()),
#                            selected = levels(f_summary())
#   )
# })

# # filters
fil_data <- reactive({

  min_data <- input$filter_summary[1]
  max_data <- input$filter_summary[2]

  # f_data <- d_summary()[d_summary()[, 1] >= min_data & d_summary()[, 1] <= max_data, 1]
  f_data <- d_summary()[d_summary() >= min_data & d_summary() <= max_data]
})


# output
output$summary <- renderPrint({
    summary_stats(fil_data())
})


# download
output$download_summary <- downloadHandler(
    
    filename = function() {
      paste('my-report', sep = '.', 'pdf')
    },

    content = function(file) {
      src <- normalizePath('summary.Rmd')

      # temporarily switch to the temp dir, in case you do not have write
      # permission to the current working directory
      owd <- setwd(tempdir())
      on.exit(setwd(owd))
      file.copy(src, 'summary.Rmd')

      library(rmarkdown)
      out <- render('summary.Rmd', pdf_document())
      file.rename(out, file)
    }
)