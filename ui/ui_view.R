tabPanel('View', value = 'tab_view',
	fluidPage(
		fluidRow(
			dataTableOutput(outputId = "table")
			)
		)
)
