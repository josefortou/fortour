#' @title nin
#'
#' @description "Not in" -- opposito of `%in%`.
#'
#' @param
#'
#' @return
#'
#' @export
#'
#' @examples
#' data(camara)
#' camara %>%
#'  filter(congress %nin% "2018-2022")
#'

`%nin%` <- function(a,b) ! a %in% b
