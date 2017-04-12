tabPanel('Data', value = 'tab_data', icon = icon('database'),

    navlistPanel(id = 'navlist',
        well = FALSE,
        widths = c(2, 10),

        source('ui/ui_upload.R', local = TRUE)[[1]],
        source('ui/ui_transform2.R', local = TRUE)[[1]],
        source('ui/ui_screen.R', local = TRUE)[[1]],
        source('ui/ui_view.R', local = TRUE)[[1]]

    )
)
