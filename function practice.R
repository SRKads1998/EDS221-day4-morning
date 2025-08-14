# adds up the number of birds and dogs

#defined function
birddog_sum <- function(bird, dog) {
  pets = bird + dog
  return(pets)
}

# use function
total_pets <- birddog_sum(bird = 2, dog = 5)


total_pets <- birddog_sum(2, 5)

# create function to double values


double_it <- function(x) {
  print(2 * x)
}

double_it(24)

double_it(c(1, 0.5, -200))

quarter_splits <- c(1, 1.1, 1.2, 1.1, 1.4, 1.5, 1.6, 1.4)

for (i in 1:length(quarter_splits)) {
  quarter_splits[i] + quarter_splits[i+1]
}

# function w/ conditionals
# example is converting animals ages

animal_age <- function(animal, age)
{ if (animal == "dog") {
  print(age * 7)
} else if (animal == "goat") {
  print (age * 4.7)
}
}
# 8 year pooch
animal_age(animal = "dog", age = 8)

# try this w/ a cow
animal_age(animal = "cow", age = 8)

# write an updated version of code w/ error

animal_age_stop <- function(animal, age){
  
  if (!animal %in% c("dog", "goat")) {
    stop("Animal must be dog or goat") }
  if (is.numeric(age) = FALSE) {
    stop("The age must be a number")
  }
  if (age <= 0 | age > 50) {
    warning("are you sure about age?")
  }
}

# Functions meets for loops 

# all the dataframes in the function are called df ----> argument df

df_means <- function(df){
for (i in 1:ncol(df)) {
  if(is.numeric(df[i]) {
  column_name <- colnames(df[[i]]))
  col_mean <- mean(df[[i]], na.rm = TRUE)
  print(paste("The mean value of", column_name, "is", col_mean))
  }
  }
  }}
df_means(df = palmerpenguins::penguins)]

# Logistic growth example
logistic_growth <- function(N0, K, r, time) {
  Nt <- K /(1 + ((K-N0) / N0) * exp(-r * time))
  print(Nt)    
}


# check one set of vals
logistic_growth(N0 = 100, K = 6000, r = 0.27, time = 40)

# working on an exmaple just for time
time_vec <- seq(from = 0, to = 35, by = 0.1)
# apply the log growth function to that vector
pop_35 <- logistic_growth(N0 = 100, K = 6000, r = 0.27, time = time_vec)

#combining time steps and pop size into a df
pop_time_35 <- data.frame(time_vec, pop_35)

# alternative, for loop
library(ggplot2)
library(tidyverse)

j <-21L
ggplot(data = pop_time_35, aes(x = time_vec, y = pop_35)) + 
  geom_line(size = 0.5)
r_seq <- seq(from = 0.20, to = 0.40, by = 0.01)
for (j in seq_along(r-seq)) {
  for (i in seq_along(time_vec)) {
    population <- logistic_growth(N0 = 100, K = 6000, r = r_seq[j],
                                  
  time = time_vec[i])
    out_matrix [i,j] <- population
  }
for (i in seq_along(time_vec)) {
  population <- logistic_growth(N0 = 100, K = 6000, r = 0.27, time = time_vec[i])
}
out_matrix <-matrix(nrow = length(time_vec), ncol = length(r_seq))
pop_35_vec <- vector(mode = "numeric", length = length(time_vec))
                     


out_matrix [i,j] <- population
out_df <- data.frame(out_matrix, time = time_vec)

colnames(out_df) <- c(paste0("gr_", r_seq), "time")

#pivot longerto make tidy
out_df_long <- out_df %>%
  pivot_longer(cols = -time,
               names_to = "growth_rate",
               values_to = "population")


# plot it!
ggplot(data = out_df_long, aes(x = time, y = population)) + 
  geom_line(aes(color = growth_rate)) +
  theme_minimal()
