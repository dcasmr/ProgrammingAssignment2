## Put comments here that give an overall description of what your
## functions do

## Create a special matrix object that can cache its inverse 
## Set the matrix
## get the value of the matrix
## Once the inverse is computed, cache it
## If inverse is already computed and matrix has not changed then results are
## retrieved from cache 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
  x <<- y
  m <<- NULL
}

 get <- function() x {
 setmatrix <-  function(solve) m<<- solve
 getmatrix <-  function() m

 list(set=set, get=get,
      setmatrix = setmatrix,
      getmatrix = getmatrix)
 }



## If matrix data not empty
## Receives the cached data 
## Use the solve function to compute the inverse
## Return the result

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
      m<-x$getmatrix()
      if(!is.null(m)){
      message("getting cached data for solved matrix")
      return(m)
       }
       matrix <- x$get()
       m <- solve(matrix, ...)
       x$setmatrix(m)
       m
}
