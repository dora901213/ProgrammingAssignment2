## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  ## The first function, makeVector creates a special "matrix", which is really a list containing a function to
  ## 1. set the value of the matrix
  ## 2. get the value of the matrix
  ## 3. set the value of the inverse
  ## 4. get the value of the inverse
  
  iv <- NULL
  set <- function(y) {
    x <<- y 
    iv <<- NULL 
  }
  get <- function() x 
  setinverse <- function(inverse) iv <<- inverse 
  getinverse <- function() iv 
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  iv <- x$getinverse()
  if(!is.null(iv)) {
    message("getting cached data")
    return(iv)
  }
  data <- x$get()
  iv <- solve(data, ...)
  x$setinverse(iv)
  return(iv)
  
}
