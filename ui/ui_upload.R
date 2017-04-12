tabPanel('Upload', value = 'tab_upload',

    fluidPage(

        fluidRow(
          column(10, align = 'left',
            h4('Upload Data'),
            p('Upload data from a comma or tab separated file.')
          ),
          column(2, align = 'right',
            actionButton(inputId='uploadlink1', label="Demo", icon = icon("video-camera"),
              onclick ="window.open('http://google.com', '_blank')")
          )
        ),
        hr(),

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
            )

        )

)
