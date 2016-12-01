tabPanel('Group Summary', value = 'tab_gsummary',

         fluidPage(

             fluidRow(

                column(3, align = 'right', br(), h5('Grouping Variable: ')),

                column(3, align = 'left',

                    selectInput("var_group", label = '', width = '150px',
                                choices = "", selected = ""
                    ),
                    bsTooltip("var_group", "Click here to select a grouping variable.",
                              "left", options = list(container = "body"))

                ),

                column(3, align = 'right', br(), h5('Summary Variable: ')),

                column(3, align = 'left',

                    selectInput("var_grp_summary", label = '', width = '150px',
                                choices = "", selected = ""
                    ),
                    bsTooltip("var_grp_summary", "Click here to select a continuous variable.",
                              "top", options = list(container = "body"))

                )

            ),

            fluidRow(

                column(12, align = 'center',

                br(),
                br(),

                actionButton(inputId = 'submit_gsummary', label = 'Submit', width = '120px'),
                bsTooltip("submit_gsummary", "Click here to view group summary.",
                              "top", options = list(container = "body"))

                )
            ),


            fluidRow(

                column(12, align = 'center',

                    verbatimTextOutput('group_summary')

                )

             ),

            fluidRow(

                column(12, align = 'center',

                    h3('Box Plot'),
                    plotOutput('box_group_summary', height = '500px')

                )

            ),

            fluidRow(

                column(6, align = 'center',

                    br(),
                    br(),
                    img(src = 'fquant.png', height = 50, width = 50),
                    actionButton(inputId = 'gsummary_mult2', label = 'Multiple 2 Way Tables', width = '140px'),
                    bsTooltip("gsummary_mult2", "Click here to return to multiple two way tables.",
                              "top", options = list(container = "body")),

                    br(),
                    br()

                ),

                column(6, align = 'center',

                    br(),
                    br(),
                    img(src = 'home_icon.png', height = 50, width = 50),
                    actionButton(inputId = 'gsummary_home', label = 'Home', width = '140px'),
                    bsTooltip("gsummary_home", "Click here to return to home.",
                              "top", options = list(container = "body")),

                    br(),
                    br()

                )

            )

         )

)
