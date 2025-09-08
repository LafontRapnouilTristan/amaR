#' answer2reviewers
#'
#' @description
#' Generate an answer for your reviewers.
#'
#' @param reviewerID an integer ranging from 1 to 3.
#'
#' @return an adequate answer
#'
#' @importFrom utils read.csv2

answer2reviewers <- function(reviewerID=1) {
  if (reviewerID>3){
    stop("WTF!! How many reviewers do you have on your back!!!!")
  }

  tmp <- get("reviewer", pos = "package:amaR")

  lineID <- suppressWarnings(sample(1:length(tmp),1))

  print(readLines(paste0("data/reviewer",lineID,".txt"),warn = F)[1])

}


