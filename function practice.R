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
