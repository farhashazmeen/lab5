#' Title
#'

#' @export
#'

runExample <- function() {
  
  appDir <- system.file("lab5_shiny", "myapp", package = "lab5")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `mypackage`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}