## Function that helps to calculate inverse of matrix and also caches it.

## Function that assigns the value of matrix and to set and retieve inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
		invMatrix <- NULL
  		set <- function(y) {
    		x <<- y
    		invMatrix <<- NULL
    	}
  		get <- function() x
    	setinverse <- function(inverse) invMatrix <<- inverse
    	getinverse <- function() invMatrix
    	
    	list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Function that calculates the inverse of the matrix

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     invMatrix <- x$getinverse()         
	if(!is.null(invMatrix)) {                 message("getting cached data")                 return(invMatrix)         }         data <- x$get()         invMatrix <- solve(data, ...)         x$setinverse(invMatrix)         invMatrix

}
