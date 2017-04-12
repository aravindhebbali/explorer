tabPanel('Resources', values = 'tab_resources', icon = icon('folder'),

	fluidPage(

		fluidRow(
			column(2, offset = 1, align = 'left', h2('R Packages'))
		),

		hr(),
		br(),

		fluidRow(
      column(3, align = 'center',
        img(src = 'descriptr.jpg', width = '100px', height = '100px')
      ),
      column(6, 
        h2('descriptr'),
        p('Generate descriptive statistics such as measures of location, 
          dispersion, frequency tables, cross tables, group summaries and 
          multiple one/two way tables. Visualize and compute percentiles/
          probabilities of normal, t, f, chi square and binomial distributions.')
      )
    ),

    fluidRow(
    	column(3),
    	column(1, align = 'left',
    		p(img(src = 'https://cran.r-project.org/Rlogo.svg', width = '15', height = '15'), 
        	a(" CRAN", href = "https://cran.r-project.org/web/packages/descriptr/", target = "_blank"))
    	),
    	column(1, align = 'left',
    		p(img(src = 'https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png', width = '15', height = '15'), 
        	a(" GitHub", href = "https://github.com/rsquaredacademy/descriptr", target = "_blank"))
    	),
    	column(1, align = 'left',
    		p(img(src = 'http://bsdma.org/onlineform/Home-Icon-Blue.png', width = '15', height = '15'), 
        	a(" Website", href = "https://rsquaredacademy.github.io/descriptr/", target = "_blank"))
    	)
    ),    

		hr(),
    br(),

		fluidRow(
      column(3, align = 'center',
        img(src = 'inferr.jpg', width = '100px', height = '100px')
      ),
      column(6, 
        h2('inferr'),
        p("Select set of parametric and non-parametric statistical tests. 
          'inferr' builds upon the solid set of statistical tests provided 
          in 'stats' package by including additional data types as inputs, 
          expanding and restructuring the test results. The tests included 
          are t tests, variance tests, proportion tests, chi square tests, 
          Levene's test, McNemar Test, Cochran's Q test and Runs test.")
      )
    ),

    fluidRow(
    	column(3),
    	column(1, align = 'left',
    		p(img(src = 'https://cran.r-project.org/Rlogo.svg', width = '15', height = '15'), 
        	a(" CRAN", href = "https://cran.r-project.org/web/packages/inferr/", target = "_blank"))
    	),
    	column(1, align = 'left',
    		p(img(src = 'https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png', width = '15', height = '15'), 
        	a(" GitHub", href = "https://github.com/rsquaredacademy/inferr", target = "_blank"))
    	),
    	column(1, align = 'left',
    		p(img(src = 'http://bsdma.org/onlineform/Home-Icon-Blue.png', width = '15', height = '15'), 
        	a(" Website", href = "https://rsquaredacademy.github.io/inferr/", target = "_blank"))
    	)
    ),   

		hr(),
    br(),

    fluidRow(
      column(3, align = 'center',
        img(src = 'olsrr.jpg', width = '100px', height = '100px')
      ),
      column(6, 
        h2('olsrr'),
        p('Tools for teaching and learning ordinary least squares regression. 
          Includes comprehensive regression output, heteroskedasticity tests, 
          collinearity diagnostics, residual diagnostics, measures of influence,
          model fit assessment and variable selection procedures.')
      )
    ),

    fluidRow(
    	column(3),
    	column(1, align = 'left',
    		p(img(src = 'https://cran.r-project.org/Rlogo.svg', width = '15', height = '15'), 
        	a(" CRAN", href = "https://cran.r-project.org/web/packages/olsrr/", target = "_blank"))
    	),
    	column(1, align = 'left',
    		p(img(src = 'https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png', width = '15', height = '15'), 
        	a(" GitHub", href = "https://github.com/rsquaredacademy/olsrr", target = "_blank"))
    	),
    	column(1, align = 'left',
    		p(img(src = 'http://bsdma.org/onlineform/Home-Icon-Blue.png', width = '15', height = '15'), 
        	a(" Website", href = "https://rsquaredacademy.github.io/olsrr/", target = "_blank"))
    	)
    ),

    fluidRow(
			column(2, offset = 1, align = 'left', h2('ebooks'))
		),

		hr(),
		br(),		   

		fluidRow(
      column(3, align = 'center',
        img(src = 'intro_book.jpg', width = '200px', height = '300px')
      ),
      column(6, 
        h2('Introductory Statistics With R'),
        p('Learn to describe your data using graphical and numerical techniques, 
          explore statistical distributions and draw conclusions from data.')
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(3, align = 'center',
        img(src = 'infer_book.jpg', width = '200px', height = '300px')
      ),
      column(6, 
        h2('Inferential Statistics With R'),
        p('Learn to draw conclusions from your data using a set of parametric
          and non-parametric statistical tests.')
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(3, align = 'center',
        img(src = 'olsrr_book.jpg', width = '200px', height = '300px')
      ),
      column(6, 
        h2('Linear Regression With R'),
        p('Learn to build regression models using the ordinary least squares 
          technique. Topics include comprehensive regression output, 
          heteroskedasticity tests, collinearity diagnostics, residual 
          diagnostics, measures of influence, model fit assessment and 
          variable selection procedures.')
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(3, align = 'center',
        img(src = 'dataviz_book.jpg', width = '200px', height = '300px')
      ),
      column(6, 
        h2('Data Visualization With R'),
        p('Learn the fundamentals of data visualization by understanding 
          grammar of graphics and create versatile graphics in R using 
          ggplot2 and base graphics.')
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(3, align = 'center',
        img(src = 'git_book.jpg', width = '200px', height = '300px')
      ),
      column(6, 
        h2('RStudio 2 GitHub'),
        p('Learn the basics of using version control and manage your data 
          science projects with RStudio and GitHub.')
      )
    ),

    br(),
    br(),
    br(),

    fluidRow(
      column(3, align = 'center',
        img(src = 'wrangling_book.jpg', width = '200px', height = '300px')
      ),
      column(6, 
        h2('Data Wrangling With R'),
        p('Learn to import data, interact with databases such as MySQL and 
          SQLite, rearrange and restructure data using tidyverse and dplyr.')
      )
    ) 

	)

)