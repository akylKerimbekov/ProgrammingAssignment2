## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

	cashedValue <- NULL

	setMatrix <- function(newMatrix) {
		x <<- newMatrix
		cachedValue <<- NULL
	}

	getMatrix <- function() {
		return x
	}

	cacheInverse <- function(solvedValue) {
		cachedValue <<- solvedValue
	}

	getInverse <- function() {
		return cachedValue
	}

	list(setMatrix = setMatrix, getMatrix = getMatrix, 
			cacheInverse = cacheInverse, getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
