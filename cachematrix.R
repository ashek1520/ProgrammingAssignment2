## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# Argument:
#   x: a n X n matrix 
# this function returns a vector of function, the vector contains 4 elements.
#   get: returns the matrix
#   set: sets the matrix
#   getInverse: gets the existing invserse of the matrix.
#   setInvesrs: sets the invsere of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <- NULL
  }

  get <- function() {
    return(x)
  }  
  setInverse <- function(y) {
    m <<- y
  }
  getInverse <- function() {
    m
  }
  list(set=set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
# Argument:
#   x: makeCacheMatrix object
# returns inverse of a matrix x, 
# if inverse is not calculated yet, will calcualte the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cacheMatrix <- x
  matInverse <- cacheMatrix$getInverse()
  if ( !is.null(matInverse)) {
    print("getting cached inverse")
    return(matInverse)
  }
  myMat <- cacheMatrix$get()
  matInverse <- myMat ^ -1
  cacheMatrix$setInverse(matInverse)
}
