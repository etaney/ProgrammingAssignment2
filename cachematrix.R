## Put comments here that give an overall description of what your
## functions do

## Dumps externally supplied matrix 'y' into a variable 'set' or extracts 'y' with 'get'

makeCacheMatrix <- function(x = matrix()) {
  
  y <<- x      #store external variable x in y
  
  get <- function() y  #get function returns 'y'
  list(get=get) #list with item 'get' uses function 'get' to return y

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  input <- x$get() #get the cached matrix from x
  inverse <- solve(input) #invert the cached matrix and dump it in 'inverse'
  inverse # return 'inverse'
  
}
