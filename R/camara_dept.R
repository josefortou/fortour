#' Party-district-level results for Colombian Congress (lower chamber) elections,
#' year 2018
#'
#' Party-election level dataset with votes, proportion of votes and seats won for
#' parties in the Colombian Camara de Representantes (lower chamber),
#' year 2018.
#'
#' @docType data
#'
#' @usage data(camara_dept)
#'
#' @format An object of class \code{"tibble"}.
#' \describe{
#'  \item{party}{Party name}
#'  \item{dept}{District name}
#'  \item{votes_party}{Total number of votes won by party in district}
#'  \item{prop_votes_party}{Proportion of valid votes won by party in district}
#' }
#' @references This data set was created from data available on MOE's website.
#' @keywords datasets
#' @examples
#'
#' data(camara_dept)
#' head(camara_dept)
"camara_dept"
