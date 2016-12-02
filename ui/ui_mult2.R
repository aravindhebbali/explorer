tabPanel('Multiple 2 Way Tables', value = 'tab_mult2',
  fluidPage(
    fluidRow(
      column(12, align = 'center',
        verbatimTextOutput('mult2')
      )
    ),
    fluidRow(

        column(4, align = 'left',

            br(),
            br(),
            img(src = 'mult1.png', height = 50, width = 50),
            actionButton(inputId = 'mult2_mult1', label = 'Multiple 1 Way Tables', width = '160px'),
            bsTooltip("mult2_mult1", "Click here to view multiple one way tables.",
                      "top", options = list(container = "body")),
            br(),
            br(),
            br()

        ),

        column(4, align = 'center',
             br(),
             br(),
             img(src = 'home_icon.png', height = 50, width = 50),
             actionButton(inputId="mult2_home", label="Home", width = '120px'),
             bsTooltip("mult2_home", "Click here to return home.",
                      "top", options = list(container = "body"))
        ),

        column(4, align = 'right',
             br(),
             br(),
             img(src = 'gsummary.jpg', height = 50, width = 50),
             actionButton(inputId="mult2_grp", label="Group Summary", width = '120px'),
             bsTooltip("mult2_grp", "Click here to view the data.",
                      "top", options = list(container = "body"))
        )

    )
  )
)
