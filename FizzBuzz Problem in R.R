#Creating the fizz function where if the number divisible by 3 we will get fizz
fizz <- function(n) {
  # Check if value is an integer
  if (!is.integer(n)) {
    # warning value is not an integer
    warning(" not an integer ")  
    # convert to an integer
    n <- as.integer(n)
  }
  # the fizz argument if the number divisible by 3 we will get fizz
  ifelse(n %% 3 == 0, "Fizz", "")
}


#Creating the fizz function where if the number divisible by 5 we will get Buzz
buzz <- function(n) {
  if (!is.integer(n)) {
    warning("One or more elements in n is not an integer and will be converted to integer")  
    n <- as.integer(n)
  }
  ifelse(n %% 5 == 0, "Buzz", "")
}

# Check if the argumnet is working
buzz(5)
buzz(5L)
buzz(6)


# Merging the two arguments together in one function() to get fizz or buzz depending on the value )
fizzbuzz <- function(n) {
  paste(fizz(n), buzz(n), sep = "")
}

# Check fizzbuzz(n)
fizzbuzz(c(3.7, 7, 10.5, 15L))

# Fizz AND bUZZ as a matrix outputs
both <- function(n,m) {
  # Check the length of n and m 
  if (! length(n) == length(m)) {
    stop("both n and m must be of the same length")
  } 
  # Check if first value (m) is smaller
  if (min(m - n) < 0) {
    stop(" msmaller than n ( n should be bigger or equal to m ")
  }
  y <- matrix(NA, nrow = max(m - n + 1), ncol = length(n))  # store results in this matrix
  # Cycle through all columns in y
  for (i in 1:length(n)) { 
    x <- seq(from = n[i], to = m[i], by = 1L)
    # Apply fizzbuzz() to elements or nothing
    y[1:length(x), i] <- ifelse(!fizzbuzz(x) == "", fizzbuzz(x), x)
  }
  # return y as the result
  return(y)
}


