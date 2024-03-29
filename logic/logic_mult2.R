output$mult2 <- renderPrint({
	num_data <- final()[, sapply(final(), is.factor)]
  validate(need(!is.null(dim(num_data)), 'Data must have at least 3 factor variables.'))
  if (is.null(dim(num_data))) {
    out <- NULL
  } else if (ncol(num_data) < 3) {
    out <- NULL
  } else {
    tway_tables(final())  
  }
})

