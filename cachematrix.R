## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # will create a matrix
  i = NULL
  set <- function(y){
    x <<- y
    i <<- NULL
    # assign values with <<-
  }
  get <- function() x
  # get a matrix called x
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  # set and get the inverse of the matrix x
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  # "actually a list" for obtaining inverse
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
    #show cached data if the inverse result is already saved.
  }
  data <- x$get()
  i <- solve(data, ...)
  # solve the inverse value
  x$setInverse(i)
  i
  #finally return an inverse of the matrix X
}
