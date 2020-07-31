#' @title calc_nep
#'
#' @description Calculates the effective number of parties (ENP, seats or votes),
#' according to two different formulae.
#'
#' @param prop_votes A vector of party vote proportions.
#' @param index Formula for the index. Can be either "lt" for Laakso-Taagepera (1979)
#' or "g" for Golosov (2010).
#'
#' @return A vector of length 1 with the ENP index.
#'
#' @export
#'
#' @examples
#' data(camara)
#' camara %>%
#'     group_by(congress) %>%
#'     summarize(nep_lt = calc_nep(prop_votes),
#'               nep_g = calc_nep(prop_votes, index = "g"))

calc_nep <- function(prop_votes, index = "lt"){
  if(index == "lt")
    { return(1 / sum(prop_votes^2)) }
  else if(index == "g")
    {return(sum(prop_votes / (prop_votes + prop_votes[1]^2 - prop_votes^2)))}
}

