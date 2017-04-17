output$mult1 <- renderPrint({
	num_data <- final()[, sapply(final(), is.factor)]
  validate(need(!is.null(dim(num_data)), 'Data must have at least 2 factor variables.'))
  if (is.null(dim(num_data))) {
    out <- NULL
  } else if (ncol(num_data) < 2) {
    out <- NULL
  } else {
    oway_tables(final())  
  }
})
