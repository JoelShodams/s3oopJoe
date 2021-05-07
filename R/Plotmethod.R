#' Plot method to create boxplot
#'
#' @param x Object from the constructor function "myttest"
#' @param ...  additional values for plotting
#'
#' @importFrom ggplot2 ggplot aes ggtitle geom_boxplot
#' @return Box Pot
#' @export
#'
#' @examples
plot.Rttest <- function(x, ...){
  dff<-x$data
  boxxplot<-ggplot(dff, aes(x=categories,y=values, colour=categories )) + geom_boxplot(aes(fill=values)) #plots the data
  boxxplot<-boxxplot + ggtitle(paste(
    "P value =",
    round(x$t_test$p.value, 4),
    "Type of Test = ",
    x$Test_type,
    "Paired = ",
    x$paired)

  )
  print(boxxplot)
}

