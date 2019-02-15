## Put comments here that give an overall description of what your
## functions do

	  ## My functions can cache the inverse of a matrix.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
  	  ##  This function creates a special "matrix" object that can cache its inverse.


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
}





## My functions:

makeCacheMatrix <- function (x = matrix()){
	iv <- NULL
	set <- function(y){
		x <<- y
		iv <<- NULL
	}
	get <- function()x
	setinverse <- function(solve) iv <<- solve
	getinverse <- function() iv
	list (set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


cacheSolve <- function (x, ...){
	iv <- x$getinverse()
	if(!is.null(iv)){
		message("getting cached data")
		return(iv)
	}
	matrix <- x$get()
	iv <- solve(matrix, ...)
	x$setinverse(iv)
	iv	
}



my_matrix <- makeCacheMatrix(matrix(1:4,2,2))
cacheSolve(my_matrix)

