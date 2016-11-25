library(shiny)

shinyServer(function(input, output, session) {
    
    source('logic/logic_link.R', local = T)
    source('logic/logic_upload.R', local = T)
    source('logic/logic_transform.R', local = T)
    source('logic/logic_view.R', local = T)
    source('logic/logic_screen.R', local = T)
    source('logic/logic_summary.R', local = T)
    source('logic/logic_freq_qual.R', local = T)
    source('logic/logic_cross.R', local = T)
    source('logic/logic_freq_quant.R', local = T)
    source('logic/logic_group_summary.R', local = T)
    
})