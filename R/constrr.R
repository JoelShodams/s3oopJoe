#' Constructor Function for Hypothesis Test
#'
#' This functions main purpose is to
#'
#' The constructor makes an object and tests for NULL Hypothesis to
#' verify if the underlying means of two populaions are equal
#'
#' @param x vector sample from First population
#' @param y vector sample from second population
#' @param alpha a value that is within the range of 0 and 1
#' @param paired a logical value of either True or False
#'
#'
#' @return List of data containing several outputs
#' @export
#'
#' @examples
#' Constrr(x,y)
constrr=function(x,y, alpha=double(), paired=logical()){
  stopifnot(is.double(alpha))
  stopifnot(is.logical(paired))

  dat=rep(c("x","y"),c(length(x),length(y)))
  data_=data.frame(dat=dat, t=c(x,y))

  if(paired=="FALSE"){
    var_test=var.test(x,y)

  if(var_test$p.value>alpha){
    ttest=t.test(x,y,paired=FALSE,var.equal=TRUE)
    testresult="T-test"
  }
   else{
     ttest=t.test(x,y,paired=FALSE,var.equal=FALSE)
     testresult="Welch"
     }
  }
  else{
    stopifnot(length(x)==length(y))
    ttest=t.test(x,y,paired=TRUE)
    testresult="Paired"}

  if(ttest$p.value<alpha){
    NH="Y"
  }
  else{NH="N"}


  dd<- list(x=x,y=y)

  #List to be printed
  llist<-list(Test_type=testresult,
             "Reject NUll?"=NH,
             testssummary=ttest, data=dd

  )
class(dd)<- "Rttest"
llist


  #dd<- list(x=x,y=y)
  #class(dd) <- "Rttest"


#plot.Rttest <- function(x,...){
#    plot(x$x ~ x$y, xlab= 'X',ylab="Y")
#  }




}
