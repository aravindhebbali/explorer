tabPanel('Screen', value = 'tab_screen',
        
        fluidPage(
            
            fluidRow(

                column(12, align = 'center',

                    verbatimTextOutput('screener')

                )

            ),

            fluidRow(

                br(),

                column(12, align = 'center',
                    actionButton('finalok', 'Approve', width = '120px', icon = icon('sign-out')),
                    bsTooltip("finalok", "Click here to approve the data.",
                              "top", options = list(container = "body"))
                )
                
            ),

            fluidRow(

                column(4, align = 'left',

                    br(),
                    br(),
                    img(src = 'transform.png', height = 50, width = 50),
                    actionButton(inputId = 'screen_transform', label = 'Transform', width = '120px'),
                    bsTooltip("view_transform", "Click here to transform data.",
                              "top", options = list(container = "body")),
                    br(),
                    br(),
                    br()

                ),

                column(4, align = 'center',
                     br(),
                     br(),
                     img(src = 'home_icon.png', height = 50, width = 50),
                     actionButton(inputId="screen_home", label="Home", width = '120px'),
                     bsTooltip("screen_home", "Click here to return home.",
                              "top", options = list(container = "body"))
                ),

                column(4, align = 'right',
                     br(),
                     br(),
                     img(src = 'view_data.png', height = 50, width = 50),
                     actionButton(inputId="screen_view", label="View", width = '120px'),
                     bsTooltip("screen_view", "Click here to view the data.",
                              "top", options = list(container = "body"))
                )

            )
        )                  
)