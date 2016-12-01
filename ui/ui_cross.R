tabPanel('Cross Table', value = 'tab_cross',

         fluidPage(

            includeCSS("styles.css"),

            fluidRow(

                column(3, align = 'right', br(), h5('Variable 1:')),

                column(3, align = 'left',

                        selectInput("var1_cross", label = '', width = '150px',
                                    choices = "", selected = ""
                        ),
                        bsTooltip("var1_cross", "Select first variable.",
                              "left", options = list(container = "body"))
                ),

                column(3, align = 'right', br(), h5('Variable 2:')),

                column(3, align = 'left',

                        selectInput("var2_cross", label = '', width = '150px',
                                    choices = "", selected = ""
                        ),
                        bsTooltip("var2_cross", "Select second variable.",
                              "left", options = list(container = "body"))
                )
            ),

            fluidRow(

                column(12, align = 'center',

                    br(),
                    br(),

                    actionButton(inputId = 'submit_cross', label = 'Submit', width = '120px', icon = icon('check')),
                    bsTooltip("submit_cross", "Click here to view cross tab.",
                              "top", options = list(container = "body"))

                )

            ),



            fluidRow(

                column(12, align = 'center',

                    br(),
                    br(),

                    verbatimTextOutput('cross')

                )

            ),

            fluidRow(

                column(12, align = 'center',

                    h3('Stacked Bar Plot', style = 'align:center;'),

                    plotOutput('cross_bar_stacked', height= '500px')

                )

            ),

            fluidRow(

                column(12, align = 'center',

                    h3('Grouped Bar Plot'),

                    plotOutput('cross_bar_grouped', height= '500px')

                )

            ),

            fluidRow(

                column(12, align = 'center',

                    h3('Proportional Bar Plot'),

                    plotOutput('cross_bar_proportional', height= '500px')

                )

            ),

            fluidRow(

                column(12, align = 'center',

                    h3('Mosaic Bar Plot'),

                    plotOutput('cross_mosaic_plot', height= '500px')

                )

            ),

            fluidRow(

                column(12, align = 'center',

                    br(),

                    downloadButton('download_cross', 'Download'),
                    bsTooltip("download_cross", "Click here to download cross tab.",
                              "top", options = list(container = "body")),
                    br(),
                    br()

                )

            ),

            fluidRow(

            column(4, align = 'left',

                br(),
                br(),
                img(src = 'frequency.png', height = 50, width = 50),
                actionButton(inputId = 'cross_fquant', label = 'Frequency - II', width = '120px'),
                bsTooltip("cross_fquant", "Click here to view frequency table for continuous variables.",
                              "top", options = list(container = "body")),

                br(),
                br()

            ),

            column(4, align = 'center',

                br(),
                br(),
                img(src = 'home_icon.png', height = 50, width = 50),
                actionButton(inputId = 'cross_home', label = 'Home', width = '120px'),
                bsTooltip("cross_home", "Click here to return to home.",
                              "top", options = list(container = "body")),

                br(),
                br()

            ),

            column(4, align = 'right',

                br(),
                br(),
                img(src = 'fquant.png', height = 50, width = 50),
                actionButton(inputId = 'cross_mult1', label = 'Multiple 1 Way Tables', width = '120px'),
                bsTooltip("cross_mult1", "Click here to view multiple one way tables.",
                              "top", options = list(container = "body")),

                br(),
                br()

            )

        )



         )

)
