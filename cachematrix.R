## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## I have compressed both the functions in one simple function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
         get <- function() x
        cacheSolve <- function (...) {
                
                if(!is.null(m)) {                                              ## this function checks if the cached data is available else it calculates inverse
                        message("getting cached data")
                } else {
                        m<<-solve(x,...)
                }
                return(m)
        }
        list(set = set, get = get,
             cacheSolve = cacheSolve)      ## the cacheSolve gives the inverse of the matrix.
             
