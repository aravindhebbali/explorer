source('helpers/group_summary.R')

# descriptive statistics
observe({
    
    updateSelectInput(session,
                      inputId = "var_group",
                      choices = names(data()),
                      selected = '')
    
    updateSelectInput(session,
                      inputId = "var_grp_summary",
                      choices = names(data()),
                      selected = '')
    
})

observeEvent(input$finalok, {

    num_data <- final()[, sapply(final(), is.numeric)]

    fact_data <- final()[, sapply(final(), is.factor)]

    updateSelectInput(session,
                      inputId = "var_group",
                      choices = names(fact_data))


    updateSelectInput(session,
                      inputId = "var_grp_summary",
                      choices = names(num_data))
})

# selected data
d_group_summary <- eventReactive(input$submit_gsummary, {
    validate(need(input$var_group != '', 'Please select a grouping and summary variable.'))
    data <- final()[, c(input$var_group, 
                        input$var_grp_summary)]
})


output$group_summary <- renderPrint({
    group_summary(d_group_summary(), as.character(input$var_group),
                  as.character(input$var_grp_summary))
})

output$box_group_summary <- renderPlot({
    
    ko <- group_summary(d_group_summary(), as.character(input$var_group),
                        as.character(input$var_grp_summary))
    boxplot.group_summary(ko)
    
})



# download
output$download_grp_summary <- downloadHandler(
    
    filename = function() {
      paste('my-report', sep = '.', 'pdf')
    },

    content = function(file) {
      src <- normalizePath('group_summary.Rmd')

      # temporarily switch to the temp dir, in case you do not have write
      # permission to the current working directory
      owd <- setwd(tempdir())
      on.exit(setwd(owd))
      file.copy(src, 'group_summary.Rmd')

      library(rmarkdown)
      out <- render('group_summary.Rmd', pdf_document())
      file.rename(out, file)
    }
)