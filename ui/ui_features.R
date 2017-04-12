tabPanel('Features', value = 'tab_features', icon = icon('info-circle'),

  fluidPage(

    fluidRow(
      column(6, offset = 3, align = 'center',
        h2('Features', align = 'center')
      )
    ),

    fluidRow(
      column(4, offset = 1,
        h2('Data Screening/Transformation'),
        p("Upload, transform, screen and approve data before beginning analysis.
          You can change data types, rename variables, verify categorical variable
          levels, inspect missing values. Data analysis can be performed only
          after approving the data.", style="background-color: green;color: white")
      ),
      column(6, align = 'center',
        img(src = 'bar_plot2.png', width = '500px', height = '500px')
      )
    ),

    fluidRow(
      column(6, align = 'center',
        img(src = 'bar_plot2.png', width = '500px', height = '500px')
      ),
      column(4, offset = 1,
        h2('Descriptive Statistics'),
        p('Upload, transform, screen and approve data before beginning analysis.
        You can change data types, rename variables, verify categorical variable
        levels, inspect missing values. Data analysis can be performed only
        after approving the data.')
      )
    ),

    fluidRow(
      column(4, offset = 1,
        h2('Distributions'),
        p('Upload, transform, screen and approve data before beginning analysis.
        You can change data types, rename variables, verify categorical variable
        levels, inspect missing values. Data analysis can be performed only
        after approving the data.')
      ),
      column(6, align = 'center',
        img(src = 'bar_plot2.png', width = '500px', height = '500px')
      )
    ),

    fluidRow(
      column(6, align = 'center',
        img(src = 'bar_plot2.png', width = '500px', height = '500px')
      ),
      column(4, offset = 1,
        h2('Data Visualization'),
        p('Upload, transform, screen and approve data before beginning analysis.
        You can change data types, rename variables, verify categorical variable
        levels, inspect missing values. Data analysis can be performed only
        after approving the data.')
      )
    ),

    fluidRow(
      column(4, offset = 1,
        h2('Inferential Statistics'),
        p('Upload, transform, screen and approve data before beginning analysis.
        You can change data types, rename variables, verify categorical variable
        levels, inspect missing values. Data analysis can be performed only
        after approving the data.')
      ),
      column(6, align = 'center',
        img(src = 'bar_plot2.png', width = '500px', height = '500px')
      )
    ),

    fluidRow(
      column(6, align = 'center',
        img(src = 'bar_plot2.png', width = '500px', height = '500px')
      ),
      column(4, offset = 1,
        h2('Linear Regression'),
        p('Upload, transform, screen and approve data before beginning analysis.
        You can change data types, rename variables, verify categorical variable
        levels, inspect missing values. Data analysis can be performed only
        after approving the data.')
      )
    ),

    fluidRow(
      column(4, offset = 1,
        h2('Logistic Regression'),
        p('Upload, transform, screen and approve data before beginning analysis.
        You can change data types, rename variables, verify categorical variable
        levels, inspect missing values. Data analysis can be performed only
        after approving the data.')
      ),
      column(6, align = 'center',
        img(src = 'bar_plot2.png', width = '500px', height = '500px')
      )
    )

  )

)
