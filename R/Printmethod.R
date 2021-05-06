#' Method Function for printing the COnfidence Interval
#'
#' @param x...Object as input
#'
#' @return list showing confidence interval
#' @export
#'
#' @examples

print.Rttest=function(x, ...){

  cat(paste("The Confidence Interval:", x[6])) #Takes the 6th element in the list attached to the class which is confidence interval
  invisible(x)
}
