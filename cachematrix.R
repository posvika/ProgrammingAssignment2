## Computing an inverse matrix with caxhe for "R programming" assigment 2 on Coursera

## Uses solve() function with single argument to compute inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	cache <- NULL
	set <- function(y) {
                x <<- y
                cache <<- NULL
        }
        get <- function() x
        setInv <- function(inverseMatrix) cache <<- solve
        getInv <- function() cache
        list(set = set, get = get,
             setInv = setInv,
             getInv = getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
        cache <- x$getInv()
        if(!is.null(cache)) {
                message("getting cached data")
                return(cache)
        }
        data <- x$get()
        cache <- solve(data)
        x$setInv(cache)
        cache

}
