## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Hi there this is my first R code, it 
# 1. set(y) -> 
# 2. get() -> 
# 3. setinverse(inverse) -> 
# 4. getinverse() -> 


makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function(){
        x 
    } 
    setinv <- function(inverse) {
        inv <<- inverse 
    }
    getinv <- function() {
        inv 
    }
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    i <- x$getinverse()
    
    if (!is.null(i)) {
      message("getting cached data")
      return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    i
}
