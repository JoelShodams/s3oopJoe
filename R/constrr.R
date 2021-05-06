#' @title Constructor Function for Hypothesis Test
#'
#' This functions main purpose is to
#'
#' The constructor makes an object and tests for NULL Hypothesis to
#' verify if the underlying means of two populations are equal
#'
#' @param x vector sample from First population
#' @param y vector sample from second population
#' @param alpha a value that is within the range of 0 and 1
#' @param paired a logical value of either True or False
#'
#'
#' @return List of data containing several outputs
#'
#'
#' @export
#'
#' @examples
#'
#' x=rnorm(20,mean=10,sd=15);y=rnorm(10,mean=8,sd=15);constrr(x,y,0.05,FALSE)


myttest=function(x,y, alpha=double(), paired=logical()){
  stopifnot(is.double(alpha)) #checks the data structure for alpha
  stopifnot(is.logical(paired)) #checks the data structure for paired


#Checks if the data given is paired if not..
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
  #Conditional statement for paired data
  else{
    stopifnot(length(x)==length(y))
    ttest=t.test(x,y,paired=TRUE)
    testresult="Paired"}

  #conditional statement to check for Null Hypothesis if pvalue is greater or less than alpha
  if(ttest$p.value<alpha){
    NH="Y"
  }
  else{NH="N"}

  columns_ <- rep(c("x","y"), c(length(x),length(y)))



  values<- c(x,y)
  Table_=data.frame("values"=values, "categories"=columns_)
  #List to be printed

  llist=list(Test_type=testresult,
             "Reject NUll?"=NH,
             t_test=ttest,data=Table_,paired=paired, CI=ttest$conf.int)

  class(llist) <- "Rttest" #A Class is created and attached
  llist
}









