library(klaR)
type <- "classification"

args <- commandArgs(TRUE)
if (length(args)) {
  num <- as.integer(args[1])
  repls <- as.integer(args[2])
}

load(file.path("problems", sprintf("%s_%02i.RData", type, num)))

for (repl in seq_len(repls)) {
  mod <- rda(y ~ ., data = problem, gamma = 1, lambda = 1)
}