#' @title calc_lsq
#'
#' @description Calculates Gallagher's index of proportionality or "least squares" index.
#'
#' @param prop_votes A vector of party vote proportions.
#' @param prop_votes A vector of party seats proportions.
#'
#' @return A vector of length 1 with the least-squares index.
#'
#' @export
#'
#' @examples
#' camara %>%
#'     group_by(congress) %>%
#'     summarize(lsq = calc_lsq(prop_votes, prop_seats))

calc_lsq <- function(prop_votes, prop_seats){
  sqrt((sum(prop_votes - prop_seats)^2)/2)
}

