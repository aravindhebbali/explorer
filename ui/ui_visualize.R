tabPanel('Visualize', value = 'tab_viz', icon = icon('line-chart'),

	navlistPanel(id = 'navlist_viz',
        well = FALSE,
        widths = c(2, 10),

        source('ui/ui_bar.R', local = TRUE)[[1]],
        source('ui/ui_bar2.R', local = TRUE)[[1]],
     		source('ui/ui_box.R', local = TRUE)[[1]],
     		source('ui/ui_box2.R', local = TRUE)[[1]],
     		source('ui/ui_hist.R', local = TRUE)[[1]],
				source('ui/ui_scatter.R', local = TRUE)[[1]],
				source('ui/ui_pie.R', local = TRUE)[[1]],
				source('ui/ui_pie3d.R', local = TRUE)[[1]],
    		source('ui/ui_line.R', local = TRUE)[[1]]
    )
)
