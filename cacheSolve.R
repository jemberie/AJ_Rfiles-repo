#The following function calculates the inverse of the special "matrix" created with the function makeCacheMatrix.R. 
#However, it first checks to see if the mean has already been calculated.
#If so, it gets the inverse from the cache and skips the computation. 
#Otherwise, it calculates the inverse of the data using the solve() function and
#and it sets the value of the inverse in the cache via the setinv function.

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}