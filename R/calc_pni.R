#' @title calc_pni
#'
#' @description Calculates the party nationalization index (PNI).
#'
#' @param prop_votes A vector of party vote proportions.
#'
#' @return A vector of length 1 with the PNI.
#'
#' @export
#'
#' @importFrom ineq
#'
#' @examples
#' data(camara_dept)
#'
#' # apply function to one party
#' camara_dept %>%
#'  filter(party == "ALIANZA VERDE") %>%
#'  summarize(inp = calc_pni(prop_votes_party))
#'
#' # apply function to all parties
#' camara_dept %>%
#'   filter(party != "VOTO EN BLANCO") %>%
#'   group_by(party) %>%
#'   summarize(inp = calc_pni(prop_votes_party))

calc_pni <- function(prop_votes){
  require(ineq)
  1 - ineq::Gini(prop_votes)
}
