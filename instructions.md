### Introduction

there are some samples of how to test the functions
 * makeCacheMatrix
 * cacheSolve

```
	# import the script from local directory or from the web
	source("path/cachematrix.r")

	# you can create matrix sending by argument of function 
	# makeCacheMatrix or after initialisation by call function
	# setMatrix from the list

	m <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)

	aa <- makeCacheMatrix(m)

	ab <- makeCacheMatrix()
	ab$setMatrix(m)

	summary(aa)
	summary(ab)

	aa$getMatrix()
	ab$getMatrix()

	# first call will cache the calculated inverse
	cacheSolve(aa)

	# second call will return cached value with message
	cacheSolve(aa)
```