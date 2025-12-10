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

  load("data/reviewers.rda")

  print(sample(reviewers[,paste0("Reviewer_",reviewerID)],1))

}


