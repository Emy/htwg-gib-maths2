# Task 2

# A

my.vec <- c(3,-2,5,0)

# B

v2 <- c(my.vec[1:2])

# C

my.vec <- c(my.vec, 10:20)

# D

my.vec[my.vec < 5] = 0

# E

# Repeat 1-2 two times
rep(1:4, 2)

# Repeat ja and nein two times each
rep(c("ja", "nein"), each = 2)

# Repeat letter a two times letter b one time letter c two times and letter d one time
rep(letters[1:4], c(2,1,2,1))

# F
# Create a sequence on 0.5 increment steps from 2 to 5
seq(from=2, to=5, by=0.5)

seq(from=2, to=5, length.out=30)*c(-1,1)

# G
rep(1:5, 3)
