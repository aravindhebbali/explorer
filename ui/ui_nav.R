tabPanel("Home", value="tab_nav", icon = icon('home'),
         fluidPage(
             fluidRow(

                 column(12, align = 'center', h5('Data'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'intro.png', height = 50, width = 50),
                        actionButton(inputId="submit_button", label="Intro", width = '150px'),
                        bsTooltip("submit_button", "Click here to read an introduction to this app.",
                              "top", options = list(container = "body"))
                 ),
             
                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_upload", label="Upload",  width = '150px'),
                        bsTooltip("click_upload", "Click here to upload data.",
                              "top", options = list(container = "body"))
                 ),
             
                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'transform.png', height = 50, width = 50),
                        actionButton(inputId="click_transform", label="Transform", width = '150px'),
                        bsTooltip("click_transform", "Click here to transform data.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'screen.png', height = 50, width = 50),
                        actionButton(inputId="click_screen", label="Screen", width = '150px'),
                        bsTooltip("click_screen", "Click here to screen the data.",
                              "top", options = list(container = "body"))
                 ),
             
                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'view_data.png', height = 50, width = 50),
                        actionButton(inputId="click_view", label="View", width = '150px'),
                        bsTooltip("click_view", "Click here to view data.",
                              "top", options = list(container = "body"))
                 ),
             
                 

                 column(12, align = 'center', br(), br(), h5('Descriptive Statistics'), hr()),

                column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'summary.png', height = 50, width = 50),
                        actionButton(inputId="click_summary", label="Summary", width = '150px'),
                        bsTooltip("click_summary", "Click here to view summary statistics.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'frequency.png', height = 50, width = 50),
                        actionButton(inputId="click_fqual", label="Frequency - I", width = '150px'),
                        bsTooltip("click_fqual", "Click here to view frequency distribution of categorical variables.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'fquant.png', height = 50, width = 50),
                        actionButton(inputId="click_fquant", label="Frequency - II", width = '150px'),
                        bsTooltip("click_fquant", "Click here to bin continuous variables.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'cross.png', height = 50, width = 50),
                        actionButton(inputId="click_cross", label="Cross Table", width = '150px'),
                        bsTooltip("click_cross", "Click here to view cross tabulation.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'cross.png', height = 50, width = 50),
                        actionButton(inputId="click_mult1", label="Multiple 1 Way Tables", width = '150px'),
                        bsTooltip("click_mult1", "Click here to generate multiple 1 way tables.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'cross.png', height = 50, width = 50),
                        actionButton(inputId="click_mult2", label="Multiple 2 Way Tables", width = '150px'),
                        bsTooltip("click_mult2", "Click here to generate multiple 2 way tables.",
                              "top", options = list(container = "body"))
                 ),

                 
                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'gsummary.jpg', height = 50, width = 50),
                        actionButton(inputId="click_gsummary", label="Group Summary", width = '150px'),
                        bsTooltip("click_gsummary", "Click here for summary statistics of a quantitative variable for 
                            different levels of a categorical variable.", "top", options = list(container = "body"))
                 ),

                 column(12, align = 'center', br(), br(), h5('Distributions'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'bar_plot.png', height = 50, width = 50),
                        actionButton(inputId="click_normal", label="Normal", width = '150px'),
                        bsTooltip("click_normal", "Click here to explore the normal distribution.",
                              "top", options = list(container = "body"))
                 ),    

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'bar_plot2.png', height = 50, width = 50),
                        actionButton(inputId="click_t", label="T",, width = '150px'),
                        bsTooltip("click_t", "Click here to explore the t distribution.",
                              "top", options = list(container = "body"))
                 ),    

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'box_plot.jpg', height = 50, width = 50),
                        actionButton(inputId="click_chisq", label="Chi Square", width = '150px'),
                        bsTooltip("click_chisq", "Click here to explore the chi-square distribution.",
                              "top", options = list(container = "body"))
                 ),   

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'box_plot_2.jpg', height = 50, width = 50),
                        actionButton(inputId="click_f", label="F", width = '150px'),
                        bsTooltip("click_f", "Click here to explore the f distribution.",
                              "top", options = list(container = "body"))
                 )


             ),

            fluidRow(

                br(), br(), br(), br()
            )
             
             
             
         )
         
)