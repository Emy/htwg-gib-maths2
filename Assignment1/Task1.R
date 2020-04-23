# Task 1

# A

# Create a vector (5,2,1,4)
x <- c(5,2,1,4)
# Create a vector with repeating pattern (1,1,1,1,1)
y <- rep(1,5)
# Create a vector with strings (Hans, Axel, Steph)
nam=c("Hans","Axel","Steph")

# B

# Return x and y
x ; y ;
# Convert vector x to string
str(x);
# Print the type of x
class(x);
# Concatenate vector x with y and with 13
c(x,y,13)
# Returns the sum of the values of the vector x
sum(x)

# C

# Returns the range of the vector x (1 to 5)
range(x)
# Returns the length of the vector y
length(y)
# Mean average of vector x
mean(x)
# Returns the sum of the values of the vector x
sum(x)
# Returns the max value of vector x
max(x)

# D

# Iterates over vector x and returns wether the current value is equal to Axel
nam=="Axel"
# Returns wether the third value of the vector is equal to Stef
nam[3]="Stef"
# Returns the length of the nam vector
length(nam)
# Returns the second value of x
x[2]
# Returns the multiplication of the fourth value of x and the second value of y
x[4] * y[2]
# Returns the values of x in the range of second to fourth index
x[2:4]
# Returns the values of x in the range of second to fourth index with a 1 added to every value
x[2:4]+1

# E

# Iterates over vector x and returns wether the current value is less or equal than 2
x <= 2
# Iterates over vector x and returns the values that are less or equal than 2
x[x <= 2]

# F

# How many values are bigger than 1 in vector x?
sum(x > 1)
