#' Function to launch shiny app
#' @description This function launches the shiny app.
#'
#' @return This function returns a shiny app created using the data loaded in the
#' package.




#' @export
run_app <- function() {
  app_dir <- system.file("eda-app", package = "fossil")
  shiny::runApp(app_dir, display.mode = "normal")
}
