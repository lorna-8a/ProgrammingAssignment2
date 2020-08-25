## assigment No.2 for cursera datascience
## 

## initialize a matrix 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve(x)
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}





## Verify if is already stored or calculate its inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  h <- x$getinverse()
  if(!is.null(h)) {
    message("getting cached data")
    return(h)
  }
  data <- x$get()
  h <- solve(data, ...)
  x$setinverse(h)
  h
}

