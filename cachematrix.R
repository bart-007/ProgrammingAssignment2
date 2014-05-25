## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) { ##create function to set value of matrix
    x <<- y
    m <<- NULL
  }
  get <- function() x ##create function to get value of matrix
  setinverse <- function(solve) m <<- solve ##create function to set value of inverse of matrix
  getinverse <- function() m ##create function to get value of inverse of matrix
  list(set = set, get = get, ##create a lis wih defined functions
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {    ##check if computed inverse of matrix is already cached
    message("getting cached data")
    return(m)   ##get cached inverse of matrix
  }
  data <- x$get() ##if not already cashed
  m <- solve(data, ...)  ##then compute inverse
  x$setinverse(m) ## and cashe it using defined earlier setinverse function
  m
}

}
