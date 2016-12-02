tabPanel("Intro", value="tab_intro", icon = icon('info-circle'),

    fluidPage(

		    fluidRow(
          column(6, offset = 3, align = 'left',
            h2('Welcome to Xplorerr', align = 'center', style = 'color:blue'),
            hr(),
            br(),
            h4('Overview', align = 'center', style = 'color:blue'),
            hr(),
            p('Xplorerr is a web interface built for interactive statistical
              analysis using ', a("R,", href = "http://r-project.org/"),
              a(" RStudio", href = "http://www.rstudio.com"), ' and ',
              a("Shiny.", href = "http://shiny.rstudio.com/"), 'The app is
              currently used to teach the business analytics course at ',
              a("Rsquared Academy", href = "http://rsquaredacademy.com/"), ' and
              is built using the following packages:'),
            tags$ul(
              tags$li(a("descriptr", href = "https://github.com/rsquaredacademy/descriptr")),
              tags$li(a("inferr", href = "https://github.com/rsquaredacademy/inferr")),
              tags$li(a("olsrr", href = "https://github.com/rsquaredacademy/olsrr")),
              tags$li(a("logbinrr", href = "https://github.com/rsquaredacademy/logbinrr")),
              style = 'align:center'
            ),
            br(),
            h4('Features', align = 'center', style = 'color:blue'),
            hr(),
            br(),
            tags$ul(
              tags$li('Data Screening'),
              tags$li('Descriptive Statistics'),
              tags$li('Tabulation'),
              tags$li('Explore Distributions'),
              tags$li('Data Visualization'),
              tags$li('Parametric Tests'),
              tags$li('Non-parametric Tests'),
              tags$li('Linear Regression'),
              tags$li('Binary Logistic Regression'),
            style = 'align:center'),
            br(),
            h4('Guide', align = 'center', style = 'color:blue'),
            hr(),
            br(),
            p('We have created a YouTube playlist to guide new users on the
            different aspects of Xplorerr. If you are interested in trying Our
            pacakges, please click on the links provided in the overview section
            '),
            br(),
            h4('About Us', align = 'center', style = 'color:blue'),
            hr(),
            br(),
            p('Rsquared Academy is a new age e-learning portal offering practical
            hands on live and self paced courses on business analytics and data
            science using R. Our goal is to offer effective, engaging and
            affordable courses online courses that will help transform your
            career.'),
            br(),
            h4('Feedback', align = 'center', style = 'color:blue'),
            hr(),
            br(),
            p('Your feedback will help us improve Xplorerr. Please send your
            feedback or report any issues to xplorerr@rsquaredlabs.com.'),
  	        br()
          )
       	),

       	fluidRow(

            column(6, align = 'center',
                img(src = 'home_icon.png', height = 50, width = 50),
                actionButton(inputId = 'intro_home', label = 'Home', width = '100px'),
                bsTooltip("intro_home", "Click here to return home.",
                              "top", options = list(container = "body")),
                br(),
                br()
            ),

            column(6, align = 'center',
                img(src = 'upload_data.jpg', height = 50, width = 50),
                actionButton(inputId = 'intro_upload', label = 'Upload', width = '100px'),
                bsTooltip("intro_upload", "Click here to upload data.",
                              "top", options = list(container = "body")),
                br(),
                br()
            )

       	)

    )

)
