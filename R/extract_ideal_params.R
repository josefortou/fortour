#' @title extract_ideal_params
#'
#' @description Extracts difficulty and discrimination parameters from an
#' \code{ideal} object
#'
#' @param model An `ideal` model object
#'
#' @return A tibble with means and confidence intervals for every difficulty and discrimination parameter
#'
#' @export
#' @importFrom ideal
#' @importFrom dplyr
#' @importFrom tidyr
#' @importFrom purrr
#' @importFrom tibble
#'
extract_ideal_params <- function(model){
  # means
  means <- summary.ideal(model, include.beta = TRUE) %>%
    pluck(5) %>%
    as.data.frame() %>%
    rownames_to_column(var = "item") %>%
    as_tibble() %>%
    pivot_longer(-item, names_to = "parameter", values_to = "mean")
  # sd
  sds <- summary.ideal(model, include.beta = TRUE) %>%
    pluck(6) %>%
    as.data.frame() %>%
    rownames_to_column(var = "item") %>%
    as_tibble() %>%
    pivot_longer(-item, names_to = "parameter", values_to = "sd")
  # ci
  cis <- summary.ideal(model, include.beta = TRUE) %>%
    pluck(7) %>%
    as.data.frame() %>%
    rownames_to_column(var = "item") %>%
    as_tibble() %>%
    pivot_longer(-item, names_to = c("est", "parameter"), names_sep = "\\.",
                 values_to = "ci") %>%
    pivot_wider(id_cols = c("item", "parameter"), names_from = est,
                names_prefix = "ci_" , values_from = ci)
  # combine
  means %>%
    left_join(sds) %>%
    left_join(cis) %>%
    #mutate(model_name = print(substitute(model))) %>%
    #relocate(model_name) %>%
    arrange(parameter, item)
}
