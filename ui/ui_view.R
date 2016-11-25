tabPanel('View', value = 'tab_view',

	    fluidPage(

	    	fluidRow(

	    		column(4, align = 'left',

	                br(),
	                br(),
	                img(src = 'screen.jpg', height = 50, width = 50),
	                actionButton(inputId = 'view_screen', label = 'Screen', width = '120px'),
	                bsTooltip("view_screen", "Click here to screen data.",
                              "top", options = list(container = "body")),
	                br(),
	                br(),
	                br()

	            ),

	    		column(4, align = 'center',

	                br(),
	                br(),
	                img(src = 'home_icon.png', height = 50, width = 50),
	                actionButton(inputId = 'view_home', label = 'Home', width = '120px'),
	                bsTooltip("view_home", "Click here to return home.",
                              "top", options = list(container = "body")),
	                br(),
	                br(),
	                br()

	            ),

	            column(4, align = 'right',
                     br(),
                     br(),
                     img(src = 'summary.png', height = 50, width = 50),
                     actionButton(inputId="view_summary", label="Summary", width = '120px'),
                     bsTooltip("screen_summary", "Click here to view summary statistics.",
                              "top", options = list(container = "body"))
                )

	            
	    	),

	        fluidRow(

	            dataTableOutput(outputId = "table")

	        )
	    
	    )
         
         
)