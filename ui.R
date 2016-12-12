library(shiny)
library(shinyBS)
library(descriptr)
library(dplyr)

shinyUI(

    navbarPage('Rsquared Academy', id = 'mainpage',

    source('ui/ui_nav.R', local = TRUE)[[1]],
    source('ui/ui_intro.R', local = TRUE)[[1]],
    source('ui/ui_data.R', local = TRUE)[[1]],
    source('ui/ui_eda.R', local = TRUE)[[1]],
    source('ui/ui_dist.R', local = TRUE)[[1]],
    source('ui/ui_visualize.R', local = TRUE)[[1]]

))
