tabPanel('Multiple 1 Way Tables', value = 'tab_mult1',
  fluidPage(
    fluidRow(
      column(12, align = 'center',
        verbatimTextOutput('mult1')
      )
    ),
    fluidRow(

        column(4, align = 'left',

            br(),
            br(),
            img(src = 'cross_table.png', height = 50, width = 50),
            actionButton(inputId = 'mult1_cross', label = 'Cross Table', width = '120px'),
            bsTooltip("mult1_cross", "Click here to view cross tables.",
                      "top", options = list(container = "body")),
            br(),
            br(),
            br()

        ),

        column(4, align = 'center',
             br(),
             br(),
             img(src = 'home_icon.png', height = 50, width = 50),
             actionButton(inputId="mult1_home", label="Home", width = '120px'),
             bsTooltip("mult1_home", "Click here to return home.",
                      "top", options = list(container = "body"))
        ),

        column(4, align = 'right',
             br(),
             br(),
             img(src = 'mult2.png', height = 50, width = 50),
             actionButton(inputId="mult1_mult2", label="Multiple 2 Way Tables", width = '120px'),
             bsTooltip("mult1_mult2", "Click here to view multiple two way tables.",
                      "top", options = list(container = "body"))
        )

    )
  )
)
