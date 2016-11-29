tabPanel('Frequency - II', value = 'tab_fquant',
         
         fluidPage(
             
            fluidRow(
                 
                column(3, align = 'right', br(), h5('Variable:')),

                column(3, align = 'left',

                    selectInput("var_freq_quant", label = '', width = '200px',
                                    choices = "", selected = ""
                    ),
                    bsTooltip("var_freq_quant", "Select a variable.",
                              "left", options = list(container = "body"))

                )

            ),

            fluidRow(

                column(3, align = 'right', br(), h5('Filter:')),

                column(3, align = 'left',
                    sliderInput(inputId = 'filter_quant',  width = '200px',
                                label = '',
                                min = 0, max = 100, 
                                step = 1, value = c(20, 80)
                    )
                ),

                column(3, align = 'right', br(), h5('Bins:')),

                column(3, align = 'left',

                    numericInput('bins', label = '', 
                                     min = 1, value = 5),
                    bsTooltip("bins", "Specify the number of bins.",
                              "bottom", options = list(container = "body"))

                )

            ),

            fluidRow(

                column(12, align = 'center',

                br(),
                br(),
                
                actionButton(inputId = 'submit_fquant', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_fquant", "Click here to view frequency table.",
                              "bottom", options = list(container = "body"))

                )
            ),

            fluidRow(

                br(),
                 
                column(12, align = 'center',
                        
                    verbatimTextOutput('freq_quant')
                        
                )
                 
            ),

            fluidRow(

                column(12, align = 'center',

                    h3('Histogram'),
                    plotOutput('hist_freq_quant')
                )
            ),

            fluidRow(

                column(4, align = 'left',

                    br(),
                    br(),
                    img(src = 'cross.png', height = 50, width = 50),
                    actionButton(inputId = 'fquant_cross', label = 'Cross Table', width = '140px'),
                    bsTooltip("fquant_cross", "Click here to return to cross tab.",
                              "top", options = list(container = "body")),

                    br(),
                    br()

                ),

                column(4, align = 'center',

                    br(),
                    br(),
                    img(src = 'home_icon.png', height = 50, width = 50),
                    actionButton(inputId = 'fquant_home', label = 'Home', width = '140px'),
                    bsTooltip("fquant_home", "Click here to return to home.",
                              "top", options = list(container = "body")),

                    br(),
                    br()

                ),

                column(4, align = 'right',

                    br(),
                    br(),
                    img(src = 'gsummary.jpg', height = 50, width = 50),
                    actionButton(inputId = 'fquant_grp_summary', label = 'Group Summary', width = '140px'),
                    bsTooltip("fquant_grp_summary", "Click here to view group summary.",
                              "top", options = list(container = "body")),

                    br(),
                    br()

                )

            )
             
    )
         
)