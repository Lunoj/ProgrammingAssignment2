## Put comments here that give an overall description of what your
## functions do

#This function creates a special "matrix" object that can cache its inverse

## Write a short comment describing this function

#set the value of the vector
#get the value of the vector
#set the value of the inverse
#get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(inv1) {
    x <<- inv1
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list (set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}


## Write a short comment describing this function

#cacheSolve: This function computes the inverse of the special "matrix" returned by 
#makeCacheMatrix above. If the inverse has already been calculated (and the matrix 
#has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <-x$getinverse()
  if(!is.null(inv)) {
     message("getting cached Data")
     return(inv)
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setinverse(inv)
    
}
