## maybe my comments has mistakes, sorry for my bad english


## the instructions of running script and output are in instructions.md file


## makeCacheMatrix consists of 4 functions and returns list of
## functions. The main idea of this function is to store a matrix
## and a cached inverse of that matrix.
makeCacheMatrix <- function(x = matrix()) {

	## this value stores a cached value of inversed matrix.
	## at first initiate it has NULL value
	cachedValue <- NULL

	## setMatrix function reinitiate stored matrix and sets cached value to NULL
	setMatrix <- function(newMatrix) {
		x <<- newMatrix
		cachedValue <<- NULL
	}

	## returns stored matrix
	getMatrix <- function() {
		return(x)
	}

	## stores cached value with given argument
	cacheInverse <- function(solvedValue) {
		cachedValue <<- solvedValue
	}

	## returns cached value
	getInverse <- function() {
		return(cachedValue)
	}

	## list with named elements, each element named by functions
	list(setMatrix = setMatrix, getMatrix = getMatrix, 
			cacheInverse = cacheInverse, getInverse = getInverse)

}


## cacheSolve realizes the inversion of matrix, created by function makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## get the cached value of inversed matrix
        cachedValue <- x$getInverse()
        ## if there is a cached value returns this value with message
        if (!is.null(cachedValue)) {
        	message("getting cached data")
        	return(cachedValue)
        }
        ## else get matrix, calculate the inversion and store to cache
        newMatrix <- x$getMatrix()
        cachedValue <- solve(newMatrix)
        x$cacheInverse(cachedValue)
        cachedValue
}
