#' Title
#'

#' @export
#'

runExample1 <- function() {
  
  appDir <- system.file("lab5_shiny", "myapp", package = "lab5")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `lab5`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}