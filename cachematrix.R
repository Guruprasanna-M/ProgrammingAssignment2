## This pair of functions cache the inverse of a matrix
## functions do

## This function creates a special matrix object that caches its
## inverse

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y)
  {
  	x <<- y 
  	inverse <<- NULL
  }
 get <- function()
  {
  	x
  }
 setinverse <- function(inverse_mat)
  {
  	inverse <<- inverse_mat
  }
 getinverse <- function()
  {
  	inverse
  }
 list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## This function computes inverse of the matrix and if it is 
## already cached then returns the value from cache

cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
 inverse <- x$getinverse()
 if (!is.null(inverse)) 
   {
   	message("inverse available in cache")
   	return(inverse)
   }
 else
   {
 	inverse <- solve(x$get())
 	x$setinverse(inverse)
 	return(inverse)
   }
        
}
