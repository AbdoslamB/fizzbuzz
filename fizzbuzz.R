
# Clear the workspace
rm(list = ls()) # Clear environment
gc()            # Clear unused memory
cat("\f")       # Clear the console

#---------------------------------------------------
#-- fizz /3
#---------------------------------------------------
fizz <- function(n) { 
  if (is.integer(n)){
    ifelse(n%%3==0   
           ,"Fizz"   #  if "n" devidable by 3 give us "Fizz"
           , ""      # other than that it will give ""
    )
  }
}

# Check if fizz(n) is working correctly
fizz(5)
fizz(5L)
fizz(6)
fizz(6L)
fizz(3.5)
fizz(c(5, 6, 9.7))

#---------------------------------------------------
#-- buzz /5
#---------------------------------------------------
buzz <- function(n) {
  if (is.integer(n)){
    ifelse(n%%5==0
           ,"bizz"   #  if "n" devidable by 5 give us "buzz"
           ,""       # other than that it will give ""
    )
  }
}

# Check if buzz(n) is working correctly
buzz(5)
buzz(5L)
buzz(6)
buzz(6L)
buzz(5.5)
buzz(c(5.5, 6, 10.3))


#---------------------------------------------------
#-- fizzbuzz /5 or /3 or both
#---------------------------------------------------

fizzbuzz <- function(n) { 
  if (is.integer(n)) {
    paste(
      fizz(n)      
      ,buzz(n)
      ,sep = "")
    
  } else 
    stop("not intger" )
}

# Check if fizzbuzz(n) is working correctly
fizzbuzz(5)
fizzbuzz(15L)
fizzbuzz(3.5)
fizzbuzz(c(3.7, 7, 10.5, 15L))

#---------------------------------------------------
#-- fbr = fizzbuzz but for columns
#---------------------------------------------------
fbr <- function(n,m) {
  if (is.integer(n)) {
    n[fizzbuzz(n)=="fizzbuzz"] <- "fizzbuzz" #for "n" if it is fizzbuzz show "fizzbuzz" 
    m[fizzbuzz(m)=="fizzbuzz"] <- "fizzbuzz" #for "m" if it is fizzbuzz show "fizzbuzz"
    n[fizz(n)=="Fizz" ] <- "fizz" #for "n" if it is fizz show "fizz"
    m[fizz(m)=="Fizz" ] <- "fizz" #for "m" if it is fizz show "fizz"
    n[ buzz(n)=="buzz"] <- "buzz" #for "n" if it is buzz show "buzz"
    m[ buzz(m)=="buzz"] <- "buzz" ##for "m" if it is buzz show "fizzbuzz" 
    
  }
}

fbr(10,13)    
fbr(15,10)
fbr(10, c(10,15))
fbr(c(10,12), c(13,15))

#---------------------------------------------------
#-- extra 
#---------------------------------------------------
set.seed(1000) # for randomness

x <- sample(1:1000, 20, replace = TRUE)
print(x)

# I create random 20 from the numbers between 1 to 1000
#I used "TRUE" to make the Repetition of the same number acceptable 

#---------------------------------------------------
#-- Question 2.2
#---------------------------------------------------

# Create y  with number of rows = 20 like "x" and 3 columns 
y <- matrix(NA, nrow = length(x), ncol = 3)

#this functions give fizz or buzz or fizzbuzz if number is divided by 3,5 or both simeller as "FizzBuzz" function
#if the "FizzBuzz" function doen't work in here we will get the same charater unllike "FizzBuzz" function 

#assign fizz(x) function  to column y1
y[,1] = fizz(x)

#assign buzz(x) function to column y2
y[,2] = buzz(x)

#assign fizzbuzz(x) function to column y3
y[,3] = fizzbuzz(x)

print(y) # to check

#---------------------------------------------------
#-- Question 2.3
#---------------------------------------------------
#to create the variable input
data <- data.frame(input <- rep(NA, length(x)) )

#---------------------------------------------------
#-- Question 2.4
#---------------------------------------------------

# to make input get the value of x
data <- data.frame(input <- paste(input  = x ) )

#---------------------------------------------------
#-- Question 2.5
#---------------------------------------------------

# to creat fizz , buzz and fizzbuzz in dataframe and git theier value from y
data$fizz <- paste( fizz =  y[,1])
data$buzz <-  paste( buzz =  y[,2])
data$fizzbuzz <-  paste( fizzbuzz =  y[,3])

#---------------------------------------------------
#-- Question 2.6
#---------------------------------------------------
# in this function I creat "feb" in dataframe and I paste the numbers from the function frn for "x"
data$fbr <- paste( fbr = feb(x))
