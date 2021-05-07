#' Method Function for printing the COnfidence Interval
#'
#' @param x...Object as input
#'
#' @return list showing confidence interval
#' @export
#'
#' @examples

print.Rttest=function(x, ...){
  cat("\n")
  cat(paste("The Confidence Interval:", x[6])) #Takes the 6th element in the list attached to the class which is confidence interval
  cat("\n")
  cat(paste("Reject the NULL? :", x[2])) #Picks the 2nd element in the object list which has a Yes or No
  cat("\n")
  cat(paste("What type of test is this :", x[1])) #Picks the first element to determine the type of test, "welch", "T-Test" or "Paired"
  invisible(x)
}
