## Put comments here that give an overall description of what your
## functions do

## Simply set the input x as a matrix
## Then set the solved value, "j" as a null
## then I changed every reference to "mean" to "solve"

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}



## Write a short comment describing this function
## Same here, changed "mean" to "solve" and "m" to "s"


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
