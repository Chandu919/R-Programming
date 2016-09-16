## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

makeCacheMatrix<-function(a = matrix()) # With this function we can set the input matrix values and                                           also can retrieve them
{
  
  invers<-NULL
  set<-function(y){
    a<<-y
    invers <<- NULL
  }
  get<-function() a
  setsolve<-function(solve) invers <<-solve
  getsolve<-function() invers
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}

cacheSolve <- function(a,....) #This function checks if the inverse is already existing in cache and                                 returns it else it will return a new inverse matrix.
{
  invers <- a$getsolve()
  if(!is.null(invers)) {
    message("getting cached data")
    return(invers)
  }
  data <- a$get()
  invers <- solve(data,....)
  a$setsolve(invers)
  invers
}