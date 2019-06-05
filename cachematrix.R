## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invs <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  set_inverse <- function(i) invs <<- i
  get_inverse <- function() invs
  list(
    set = set,
    get = get,
    set_inverse = set_inverse,
    get_inverse = get_inverse
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invs <- x$get_inverse
  if (!is.null(invs)) {
    message('getting cached data')
    return(invs)
  }
  data <- x$get()
  invs <- solve(data)
  x$set_inverse(invs)
  invs
}
