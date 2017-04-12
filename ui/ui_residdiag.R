tabPanel('Residual Diagnostics', value = 'tab_residdiag',
  fluidPage(
    fluidRow(
      column(12,
        tabsetPanel(type = 'tabs',
          tabPanel('Component Plus Residual Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("cplusr_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("cplusr_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_cplusr', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_cplusr", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('cplusr_plot'))
              )
            )
          ),
          tabPanel('Potential Residual Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("poten_resid_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("poten_resid_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_poten_resid', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_poten_resid", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('poten_resid_plot'))
              )
            )
          ),
          tabPanel('Residual Fit Spread Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("rfs_plot_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("rfs_plot_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_rfs_plot', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_rfs_plot", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('rfs_plot'))
              )
            )
          ),
          tabPanel('Residual vs Predicted Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("rvsp_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("rvsp_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_rvsp_plot', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_rvsp_plot", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('rvsp_plot'))
              )
            )
          ),
          tabPanel('Deleted Studentized Residual vs Predicted Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("dsrvsp_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("dsrvsp_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_dsrvsp_plot', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_dsrvsp_plot", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('dsrvsp_plot'))
              )
            )
          ),
          tabPanel('Residual vs Regressor Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("rvsr_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("rvsr_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_rvsr_plot', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_rvsr_plot", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('rvsr_plot'))
              )
            )
          ),
          tabPanel('Studentized Residual vs Leverage Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("srlev_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("srlev_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_srlev_plot', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_srlev_plot", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('srlev_plot'))
              )
            )
          ),
          tabPanel('Studentized Residual Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("srplot_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("srplot_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_srplot', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_srplot", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('sr_plot'))
              )
            )
          ),
          tabPanel('Studentized Residual Chart',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("srchart_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("srchart_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_srchart', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_srchart", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('sr_chart'))
              )
            )
          ),
          tabPanel('Residual Box Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("residbp_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("residbp_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_residbp', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_residbp", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('residbp_plot'))
              )
            )
          ),
          tabPanel('Residual Histogram',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("residh_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("residh_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_residh', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_residh", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('residhist_plot'))
              )
            )
          ),
          tabPanel('Residual QQ Plot',
            fluidPage(
              fluidRow(
                column(2, align = 'right', br(), h5('Model Formula:')),
                column(10, align = 'left',
                    textInput("residqq_fmla", label = '', width = '660px',
                                    value = ""),
                    bsTooltip("residqq_fmla", "Specify model formula",
                              "left", options = list(container = "body")))
              ),
              fluidRow(
                column(12, align = 'center',
                br(),
                br(),
                actionButton(inputId = 'submit_residqq', label = 'Submit', width = '120px', icon = icon('check')),
                bsTooltip("submit_residqq", "Click here to view test results.",
                              "bottom", options = list(container = "body")))
              ),
              fluidRow(
                  br(),
                  column(12, plotOutput('residqq_plot'))
              )
            )
          )
        )
      )
    )
  )
)
