tabPanel("Intro", value="tab_intro", icon = icon('info-circle'),

    fluidPage(

		    fluidRow(

	         tags$h3('Welcome to Rsquared Analytics'),

	         br(),
	         br()

       	),

       	fluidRow(

            column(6, align = 'center',

                # link to home page
                img(src = 'home_icon.png', height = 50, width = 50),
                actionButton(inputId = 'intro_home', label = 'Home', width = '100px'),
                bsTooltip("intro_home", "Click here to return home.",
                              "top", options = list(container = "body"))
                

            ),

            column(6, align = 'center',

                # link to upload page
                img(src = 'upload_data.jpg', height = 50, width = 50),
                actionButton(inputId = 'intro_upload', label = 'Upload', width = '100px'),
                bsTooltip("intro_upload", "Click here to upload data.",
                              "top", options = list(container = "body"))

            )

       	)      

    )

)