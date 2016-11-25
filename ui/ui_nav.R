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
             
                 

                 column(12, align = 'center', br(), br(), h5('Exploratory Data Analysis'), hr()),

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
                        img(src = 'cross.png', height = 50, width = 50),
                        actionButton(inputId="click_cross", label="Cross Table", width = '150px'),
                        bsTooltip("click_cross", "Click here to view cross tabulation.",
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
                        img(src = 'gsummary.jpg', height = 50, width = 50),
                        actionButton(inputId="click_gsummary", label="Group Summary", width = '150px'),
                        bsTooltip("click_gsummary", "Click here for summary statistics of a quantitative variable for 
                            different levels of a categorical variable.", "top", options = list(container = "body"))
                 ),

                 column(12, align = 'center', br(), br(), h5('Data Visualization'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'bar_plot.png', height = 50, width = 50),
                        actionButton(inputId="click_barplot", label="Bar Plot", width = '150px'),
                        bsTooltip("click_barplot", "Click here to create a simple bar plot.",
                              "top", options = list(container = "body"))
                 ),    

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'bar_plot2.png', height = 50, width = 50),
                        actionButton(inputId="click_barplot2", label="2 Factor Bar Plot",, width = '150px'),
                        bsTooltip("click_barplot2", "Click here to create a stacked/grouped bar plot.",
                              "top", options = list(container = "body"))
                 ),    

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'box_plot.jpg', height = 50, width = 50),
                        actionButton(inputId="click_boxplot", label="Box Plot", width = '150px'),
                        bsTooltip("click_boxplot", "Click here to create box plot of a single variable.",
                              "top", options = list(container = "body"))
                 ),   

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'box_plot_2.jpg', height = 50, width = 50),
                        actionButton(inputId="click_boxplot2", label="2 Factor Box Plot", width = '150px'),
                        bsTooltip("click_boxplot2", "Click here to create box plot of a quantitative variable for different levels of a categorical variable.",
                              "top", options = list(container = "body"))
                 ),  

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'histogram.jpg', height = 50, width = 50),
                        actionButton(inputId="click_hist", label="Histogram", width = '150px'),
                        bsTooltip("click_hist", "Click here to create a histogram.",
                              "top", options = list(container = "body"))
                 ),       

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'line_chart.png', height = 50, width = 50),
                        actionButton(inputId="click_line", label="Line Graph", width = '150px'),
                        bsTooltip("click_line", "Click here to create a line chart.",
                              "top", options = list(container = "body"))
                 ),   

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'pie_chart.png', height = 50, width = 50),
                        actionButton(inputId="click_pie", label="Pie Chart", width = '150px'),
                        bsTooltip("click_pie", "Click here to create a pie chart.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'pie_chart.png', height = 50, width = 50),
                        actionButton(inputId="click_pie3d", label="3D Pie Chart", width = '150px'),
                        bsTooltip("click_pie3d", "Click here to create a 3D pie chart.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'scatter_plot.png', height = 50, width = 50),
                        actionButton(inputId="click_scatter", label="Scatter Plot", width = '150px'),
                        bsTooltip("click_scatter", "Click here to create a scatter plot.",
                              "top", options = list(container = "body"))
                 ),         

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'mosaic_plot.png', height = 50, width = 50),
                        actionButton(inputId="click_mosaic", label="Mosaic Plot", width = '150px'),
                        bsTooltip("click_mosaic", "Click here to create a mosaic plot.",
                              "top", options = list(container = "body"))
                 ),

                 column(12, align = 'center', br(), br(), h5('t Tests'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'ttest1.png', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="One Sample",  width = '150px'),
                        bsTooltip("click_ttest1", "Click here to perform a one sample t test.",
                              "top", options = list(container = "body"))
                 ),   

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'ttest3.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest2", label="Paired Sample", width = '150px'),
                        bsTooltip("click_ttest2", "Click here to perform a paired sample t test.",
                              "top", options = list(container = "body"))
                 ),   

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'ttest2.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest3", label="Independent Samples", width = '170px'),
                        bsTooltip("click_ttest3", "Click here to perform a independent sample t test.",
                              "top", options = list(container = "body"))
                 ),

                 column(12, align = 'center', br(), br(), h5('Chi Square Tests & ANOVA'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'gfit.jpg', height = 50, width = 50),
                        actionButton(inputId="click_gof", label="Goodness of Fit", width = '150px'),
                        bsTooltip("click_gof", "Click here to perform a chi square goodness of fit test.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'independent.png', height = 50, width = 50),
                        actionButton(inputId="click_chisq", label="Chi Square II", width = '170px'),
                        bsTooltip("click_chisq", "Click here to perform a chi square test of independence.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'independent.png', height = 50, width = 50),
                        actionButton(inputId="click_anova", label="One Way ANOVA", width = '170px'),
                        bsTooltip("click_anova", "Click here to perform a one way analysis of variance.",
                              "top", options = list(container = "body"))
                 ),

                 column(12, align = 'center', br(), br(), h5('Non Parametric Tests'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Binomial", icon = icon('check-square'), width = '150px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Friedman", icon = icon('check-square'), width = '150px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Grubbs Outlier", icon = icon('check-square'), width = '150px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Jarque Bera", icon = icon('check-square'), width = '150px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="McNemar", icon = icon('check-square'), width = '150px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Runs", icon = icon('check-square'), width = '150px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Sign", icon = icon('check-square'), width = '150px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Wilcoxon Signed Rank", icon = icon('check-square'), width = '180px')
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        # img(src = 'upload_data.jpg', height = 50, width = 50),
                        actionButton(inputId="click_ttest1", label="Shapiro Wilk", icon = icon('check-square'), width = '150px')
                 ),

                 column(12, align = 'center', br(), br(), h5('Regression'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'slr.jpeg', height = 50, width = 50),
                        actionButton(inputId="click_slr", label="Simple Linear", icon = icon('check-square'), width = '150px'),
                        bsTooltip("click_slr", "Click here to perform a simple linear regression.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'slr2.jpeg', height = 50, width = 50),
                        actionButton(inputId="click_mlr", label="Multiple Linear", icon = icon('check-square'), width = '150px'),
                        bsTooltip("click_mlr", "Click here to perform a multiple linear regression.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'logistic.jpeg', height = 50, width = 50),
                        actionButton(inputId="click_logistic", label="Logistic", icon = icon('check-square'), width = '150px'),
                        bsTooltip("click_logistic", "Click here to perform a logistic regression.",
                              "top", options = list(container = "body"))
                 ),

                 column(12, align = 'center', br(), br(), h5('Other Procedures'), hr()),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'cluster.jpg', height = 50, width = 50),
                        actionButton(inputId="click_cluster", label="Cluster Analysis", icon = icon('check-square'), width = '150px'),
                        bsTooltip("click_cluster", "Click here to perform a cluster analysis.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'dtree.png', height = 50, width = 50),
                        actionButton(inputId="click_dtree", label="Decision Trees", icon = icon('check-square'), width = '150px'),
                        bsTooltip("click_dtree", "Click here to create decision trees.",
                              "top", options = list(container = "body"))
                 ),

                 column(4, align = 'center',
                        br(),
                        br(),
                        img(src = 'mba.jpg', height = 50, width = 50),
                        actionButton(inputId="click_mba", label="Association Rules", icon = icon('check-square'), width = '150px'),
                        bsTooltip("click_mba", "Click here to mine association rules.",
                              "top", options = list(container = "body"))
                 )


             ),

            fluidRow(

                br(), br(), br(), br()
            )
             
             
             
         )
         
)