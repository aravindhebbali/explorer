tabPanel('Upload', value = 'tab_upload',

    fluidPage(

            fluidRow(
                column(12, align = 'center', 
                    fileInput('file', 'Data Set:',  
                        accept = c('text/csv', '.csv',
                            'text/comma-separated-values,text/plain')
                    )
                )
            ),

            fluidRow(
                column(12, align = 'center',  checkboxInput('header', 'Header', TRUE))
            ),

            fluidRow(
                column(12, align = 'center', 
                    selectInput('sep', 'Separator',
                        choices = c('Comma' = ',', 'Semicolon' = ';', 'Tab' = '\t'), selected = ',')
                )
            ),

            fluidRow(
                column(12, align = 'center',  
                    selectInput('quote', 'Quote',
                        choices = c('None' = '', 'Double Quote' = '"', 'Single Quote' = "'"), selected = '')
                )
            ),

            fluidRow(

                column(6, align = 'center', 
                     br(),
                     br(),
                     img(src = 'home_icon.png', height = 50, width = 50),
                     actionButton(inputId="upload_home", label="Home"),
                     bsTooltip("upload_home", "Click here to return home.",
                              "top", options = list(container = "body"))

                ),

                column(6, align = 'center',
                     br(),
                     br(),
                     img(src = 'transform.png', height = 50, width = 50),
                     actionButton(inputId="upload_transform", label="Transform"),
                     bsTooltip("upload_transform", "Click here to transform data.",
                              "top", options = list(container = "body"))

                )

            )  

        )
         
)