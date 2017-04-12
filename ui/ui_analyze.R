navbarMenu('Analyze', icon = icon('search-plus'),
  source('ui/ui_data.R', local = TRUE)[[1]],
  source('ui/ui_eda.R', local = TRUE)[[1]],
  source('ui/ui_dist.R', local = TRUE)[[1]],
  source('ui/ui_visualize.R', local = TRUE)[[1]],
  source('ui/ui_inference.R', local = TRUE)[[1]],
  source('ui/ui_mlr.R', local = TRUE)[[1]]
)
