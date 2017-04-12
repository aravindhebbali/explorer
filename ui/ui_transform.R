tabPanel('Transform', value = 'tab_transform',

             fluidPage(

               fluidRow(
                 column(6, align = 'left',
                   h4('Data Transformation')
                 ),
                 column(6, align = 'right',
                   actionButton(inputId='translink1', label="Help", icon = icon("question-circle"),
                     onclick ="window.open('http://google.com', '_blank')"),
                   actionButton(inputId='translink2', label="Tutorial", icon = icon("university"),
                     onclick ="window.open('http://google.com', '_blank')"),
                   actionButton(inputId='translink3', label="Demo", icon = icon("video-camera"),
                     onclick ="window.open('http://google.com', '_blank')")
                 )
               ),
               hr(),

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
                 )

    )

)
