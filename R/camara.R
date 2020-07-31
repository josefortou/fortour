#' Party-level results for Colombian Congress (lower chamber) elections,
#' years 2010, 2014, and 2018
#'
#' Party-election level dataset with votes, proportion of votes and seats won for
#' parties in the Colombian Camara de Representantes (lower chamber),
#' years 2010, 2014, and 2018.
#'
#' @docType data
#'
#' @usage data(camara)
#'
#' @format An object of class \code{"tibble"}.
#' \describe{
#'  \item{congress}{Congressional period/election}
#'  \item{party}{Party name}
#'  \item{votes}{Total number of votes won by party in election}
#'  \item{prop_votes}{Proportion of total votes won by party in election}
#'  \item{seats}{Total number of seats won by party in election}
#'  \item{prop_seats}{Proportion of total seats won by party in election}
#' }
#' @references This data set was created from data available on Wikipedia.
#' @keywords datasets
#' @examples
#'
#' data(camara)
#' head(camara)
"camara"
