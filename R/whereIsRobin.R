#' whereIsRobin
#'
#' @description
#' Try to find Robin
#'
#' @return Robin's location
#'
#' @importFrom imager load.image
#'


whereIsRobin <- function(){

  plot(imager::load.image("data/behindyou.png"),axes = F)
  print("BEHIND YOU!!!")

}
