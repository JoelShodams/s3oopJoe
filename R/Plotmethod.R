#' Plot method to create boxplot
#'
#' @param x Object from the constructor function "constrr"
#' @param ...  additional values for plotting
#'
#' @return Box Pot
#' @export
#'
#' @examples
plot.Rttest <- function(x,...){
  plot(x$x ~ x$y, xlab= 'X',ylab="Y")
}

