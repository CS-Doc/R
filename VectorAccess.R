w <- c("a", "b", "c", "d", "e")
w
w[c(1, 3, 5)]
w[-1]
w[1:3]
w[-3:-5]
#vector arithmetics, r is vectorized programming language
#no need for loops just add vector a to vector b
#you can also perfrom boolean operation between vectors
#Recycling of Vector- When one vector is smaller, R will 
#recycle it to use again with the other bigger one
#vector is the basic building block of R, even a
#single number is Vector
#Vectors canbu used in fuctions and functions can 
#produce array

x <- rnorm(5)
x
#R Specific programming loop, iterating through the vector
for (i in x){
  print(i)
}
#loops are for iterative process "Monkey Jobs"
print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop, iterating through 
#the position
for(j in 1:5){
print(x[j])
}

#--------------------------------------------------------

N <- 100
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach (faster, less code, no loop):

c <- a * b


#De-Vectorized approach:

#Empty vector we are allocating memory with 100 spaces
d <- rep(NA,N) 
for (i in 1:N){
  d[i] <- a[i] * b[i]
}

#Why in Vectorized approach in R is faster? 
#Since vectors are only of same type in R (int/dou/str)
#It is  delegating to C or Fortran that fact
#which then makes the rest of the delegated lang faster


