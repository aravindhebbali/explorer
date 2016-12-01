tabPanel('Frequency - I', value = 'tab_fqual',

        fluidPage(

            fluidRow(

                column(2, align = 'right',

                    br(),
                    br(),
                    h5('Variable:')

                ),

                column(2, align = 'left',

                    br(),

                    selectInput("var_table", label = '',
                                   choices = "", selected = "", width = '150px'),
                    bsTooltip("var_table", "Select a variable.",
                              "right", options = list(container = "body"))

                )

            ),

            fluidRow(

                column(12, align = 'center',

                    br(),
                    br(),

                    actionButton(inputId = 'submit_fqual', label = 'Submit', width = '120px', icon = icon('check')),
                    bsTooltip("submit_fqual", "Click here to view frequency table.",
                              "bottom", options = list(container = "body"))

                )

            ),

            fluidRow(

                column(12, align = 'center',

                    br(),
                    br(),
                    h3('Frequency Table'),
                    br(),
                    verbatimTextOutput('freq_qual'),
                    br(),
                    plotOutput('qual_vert'),
                    br(),
                    plotOutput('qual_horiz')


                 )

            ),

            fluidRow(

                column(4, align = 'left',

                    br(),
                    br(),
                    img(src = 'summary.png', height = 50, width = 50),
                    actionButton(inputId = 'fqual_summary', label = 'Summary', width = '120px'),
                    bsTooltip("fqual_summary", "Click here to view summary statisitcs.",
                              "top", options = list(container = "body")),
                    br(),
                    br()

                ),

                column(4, align = 'center',

                    br(),
                    br(),
                    img(src = 'home_icon.png', height = 50, width = 50),
                    actionButton(inputId = 'fqual_home', label = 'Home', width = '120px'),
                    bsTooltip("fqual_home", "Click here to return to home.",
                              "top", options = list(container = "body")),
                    br(),
                    br()

                ),

                column(4, align = 'right',

                    br(),
                    br(),
                    img(src = 'fquant.png', height = 50, width = 50),
                    actionButton(inputId = 'fqual_fquant', label = 'Frequency - II', width = '120px'),
                    bsTooltip("fqual_fquant", "Click here to view frequency tables for continuous data.",
                              "top", options = list(container = "body")),
                    br(),
                    br()

                )

            )
        )
)
