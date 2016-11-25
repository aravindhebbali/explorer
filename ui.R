library(shiny)
library(shinyBS)

shinyUI(
    
    navbarPage('Rsquared Academy', id = 'mainpage',
    
    source('ui/ui_nav.R', local = TRUE)[[1]],
    source('ui/ui_intro.R', local = TRUE)[[1]],
    source('ui/ui_data.R', local = TRUE)[[1]],
    source('ui/ui_eda.R', local = TRUE)[[1]]
    
))