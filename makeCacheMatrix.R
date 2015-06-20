
# The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to
# 
# set the value of the  matrix
# get the value of the matrix
# set the value of the inverse of the matrix
# get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
      setinv = setinv,
      getinv = getinv)
}