#' Title
#'
#' @return
#' @export
#'
#' @examples
#' \dontrun{plotShiny()}

plotShiny<- function(){
  shiny::runApp(system.file("shinyshiny/Application/Package", package
  = "s3oopJoe"), launch.browser=TRUE)
}
