#' @title theme_fortou
#'
#' @description Minimal ggplot2 theme
#'
#' @param
#'
#' @return
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(ggplot)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     labs(title = "A title", subtitle = "A subtitle", x = "Weight", y = "MPG") +
#'     theme_fortou()
#'
#' set_theme(theme_fortou())
#'
#' }

theme_fortou <- function(){
  theme_bw(base_size = 14)
}
