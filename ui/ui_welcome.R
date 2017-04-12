tabPanel('Home', value = 'tab_welcome', icon = icon('home'),

  fluidPage(theme = shinytheme('cerulean'),

    fluidRow(
      column(12, align = 'center',
        img(src = 'banner3.jpeg', width = '1300px', height = '500px')
      )
    ),

    fluidRow(
      br(),
      br(),
      br(),
      column(12, align = 'center',
        h1('Explore..Discover..Learn', style="color:black")
      )
    ),

    fluidRow(
      br(),
      br(),
      column(3, align = 'center', h3('Descriptive Statistics')),
      column(3, align = 'center', h3('Data Visualization')),
      column(3, align = 'center', h3('Statistical Inference')),
      column(3, align = 'center', h3('Regression Modeling'))
    ),

    fluidRow(
      br(),
      column(3, align = 'center', img(src = 'summary1.png', width = '100px', height = '100px')),
      column(3, align = 'center', img(src = 'visualize2.png', width = '100px', height = '100px')),
      column(3, align = 'center', img(src = 'independent.png', width = '100px', height = '100px')),
      column(3, align = 'center', img(src = 'simple_reg.png', width = '100px', height = '100px'))
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(6, offset = 3, align = 'center',
        h2('Xplorerr is a web interface built for interactive statistical
                analysis using ', a("R,", href = "http://r-project.org/"),
                a(" RStudio", href = "http://www.rstudio.com"), ' and ',
                a("Shiny.", href = "http://shiny.rstudio.com/"), 'The app is
                currently used to teach the business analytics course at ',
                a("Rsquared Academy.", href = "http://rsquaredacademy.com/"), 
                style="color:black")
      )
    ),

    fluidRow(
      column(12, align = 'center',
        div(style = "height:800px;",
          br(),
          br(),
          br(),
          br(),
          br(),
          tags$iframe(width="760", height="515", src="https://www.youtube.com/embed/aM0bjrYCvv8?rel=0&autoplay=1")
        )
      )
    ),

    fluidRow(
      column(4, offset = 4, align = 'center',
        h2('Simple Interface'),
        p('Xplorerr offers a simple interface for uploading data. As a tool aimed at beginners, all 
          you need to do is to upload your data in a comma or tab separated file and get going with your analysis.')
      ),
      column(12, align = 'center',
        tags$iframe(src="https://player.vimeo.com/video/208786227", width="640", height="360")
      )
      
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(4, offset = 4, align = 'center',
        h2('Transform Data'),
        p('Screen data for missing values, rename variables and modify data types.')
      ),
      column(12, align = 'center',
        tags$iframe(src="https://player.vimeo.com/video/208786721", width="640", height="360")
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(4, offset = 4, align = 'center',
        h2('Exploratory Data Analysis'),
        p('Generate detailed summary statistics, one and two way tables, group summaries and
          visualize the same.')
      ),
      column(12, align = 'center',
        tags$iframe(src="https://player.vimeo.com/video/208787963", width="640", height="360")
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(4, offset = 4, align = 'center',
        h2('Understand Statistical Distributions'),
        p('Vizually explore the most important statistical distributions. Understand the factors which
          influence their shapes. Learn to calculate the probability and quantiles.')
      ),
      column(12, align = 'center',
        tags$iframe(src="https://player.vimeo.com/video/208788108", width="640", height="360")
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(4, offset = 4, align = 'center',
        h2('Visualize Data'),
        p('Visualize data by interactively building plots step by step.')
      ),
      column(12, align = 'center',
        tags$iframe(src="https://player.vimeo.com/video/208788291", width="640", height="360")
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(4, offset = 4, align = 'center',
        h2('Inferential Statistics'),
        p('Test hypothesis using a set of most important parametric and non-parametric tests.')
      ),
      column(12, align = 'center',
        tags$iframe(src="https://player.vimeo.com/video/208788340", width="640", height="360")
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(4, offset = 4, align = 'center',
        h2('Model Building & Validation'),
        p('Build and evaluate statistical models using a simple workflow.')
      ),
      column(12, align = 'center',
        tags$iframe(src="https://player.vimeo.com/video/208788402", width="640", height="360")
      )
    ),

    br(),
    br(),
    br()

  )

)
