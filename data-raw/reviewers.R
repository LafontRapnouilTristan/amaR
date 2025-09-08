## code to prepare `reviewers` dataset goes here


rev1 <- read.delim("data-raw/reviewer1.txt",header = F)
names(rev1) <- "Reviewer_1"
rev2 <- read.delim("data-raw/reviewer2.txt",header = F)
names(rev2) <- "Reviewer_2"
rev3 <- read.delim("data-raw/reviewer3.txt",header = F)
names(rev3) <- "Reviewer_3"

reviewers <- cbind(rev1,rev2,rev3)

usethis::use_data(reviewers, overwrite = TRUE)
