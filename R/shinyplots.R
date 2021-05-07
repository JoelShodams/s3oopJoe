#' Title
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{plotShiny()}

plotShiny<- function(){
  shiny::runApp(system.file("inst/Shiny", package
  = "s3oopJoe"), launch.browser=TRUE)
}
