## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix()) {
      m <- NULL  
      set <- function(y) {    
              x <<- y    
              m <<- NULL
              }
        
        get <- function() x  
        setinverse <- function(solve) m <<- solve  
        getinverse <- function() m
}
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
        m <- x$getiverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
                }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
        }
                
