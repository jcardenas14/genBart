#' Run BART Shiny App
#'
#' This function runs the BART shiny app.
#' @examples
#' if (interactive()) genBART::runBart()
#' @export
runBart <- function() {
  appDir <- system.file("shiny-app", "BART", package = "genBART")
  if (appDir == "") {
    stop("Could not find BART directory. Try re-installing `genBART`.", 
         call. = FALSE)
  }
  shiny::runApp(appDir, display.mode = "normal")
}