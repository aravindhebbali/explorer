tabPanel('Transform', value = 'tab_transform',
        
             fluidPage(
                 
                 fluidRow(
                     
                     column(3, align = 'center', 
                            tags$h5('Variable'),
                            tags$hr(),
                            uiOutput("ui_ncol")
                     ),

                     column(3, offset = 'center', 
                            tags$h5('Rename'),
                            tags$hr(),
                            uiOutput("ui_rename")
                     ),
                     
                     column(3, offset = 'center', 
                            tags$h5('Data Type'),
                            tags$hr(),
                            uiOutput("ui_datatype")
                     ),

                     column(3, offset = 'center', 
                            tags$h5('Date Type'),
                            tags$hr(),
                            uiOutput("ui_datetype")
                     )                   

                     
                     
                 ),
                 
                 fluidRow(
                     tags$br()
                 ),
                 
                 fluidRow(
                     
                     column(12, align = 'center',
                            br(),
                            actionButton(inputId="apply_changes", label="Apply Changes", icon = icon('thumbs-up')),
                            bsTooltip("apply_changes", "Click here to apply changes to data.",
                              "top", options = list(container = "body")),
                            br(),
                            br()
                     )
                 ),

                 fluidRow(

                    column(4, align = 'left',
                         br(),
                         br(),
                         img(src = 'upload_data.jpg', height = 50, width = 50),
                         actionButton(inputId="transform_upload", label="Upload", width = '100px'),
                         bsTooltip("transform_upload", "Click here to upload data.",
                              "top", options = list(container = "body")),
                         br(),
                         br()
                    ),

                    column(4, align = 'center',
                         br(),
                         br(),
                         img(src = 'home_icon.png', height = 50, width = 50),
                         actionButton(inputId="transform_home", label="Home", width = '100px'),
                         bsTooltip("transform_home", "Click here to return home.",
                              "top", options = list(container = "body")),
                         br(),
                         br()
                    ),

                    column(4, align = 'right',
                         br(),
                         br(),
                         img(src = 'screen.jpg', height = 50, width = 50),
                         actionButton(inputId="transform_screen", label="Screen", width = '100px'),
                         bsTooltip("transform_screen", "Click here to screen your data.",
                              "top", options = list(container = "body")),
                         br(),
                         br()
                    )

                )


    )
         
)