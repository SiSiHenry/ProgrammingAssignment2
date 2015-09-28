## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## make a square invertible matrix that 
#1. returns a list containing funtions to, set the matrix, get the matrix, set the inverse, and get the inverse
# Use the list as the input value to the catchSolve function 
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL #`<<-` is used to assign the value to an object in the enviorment, that is not of the enviorment (lexiacal scope)
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {  # this is the output of the makecatch function above
                                  # This will return the inverse of the matrix   
  m <- x$getinv()
  if(!is.null(m)) { #If the inverse has been calculated then, 
    message("getting cached data") 
    return(m)  # get it from the catch and retun the inverse function 
  }
  data <- x$get() #if not calculate the inverse 
  m <- solve(data, ...)
  x$setinv(m) #set values into catch by using the setinv function 
  m
}


        ## Return a matrix that is the inverse of 'x'


