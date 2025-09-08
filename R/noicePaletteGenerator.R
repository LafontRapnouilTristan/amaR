#' noicePaletteGenerator
#'
#' @description
#' Generate a nice palette (it's more scavenging but well)
#'
#' @param ncolor an integer ranging from 1 to 10.
#'
#' @return a color palette of closest of desired length.
#'
#' @importFrom paletteer paletteer_d
#' @importFrom dplyr filter
#'
#'

noicePaletteGenerator <- function(ncolor=1) {
  if (ncolor>10){
    stop("Zatiz to many colorz maggle")
  }

listpal <-   paletteer::palettes_d_names |>
               dplyr::filter(abs(length - ncolor)==min(abs(length - ncolor)))

palRow <- sample(1:length(listpal$palette),1)

DaPal <- paletteer::paletteer_d(paste0(listpal$package[palRow],"::",listpal$palette[palRow]))
return(DaPal)
}
