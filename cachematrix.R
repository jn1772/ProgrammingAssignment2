## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        
        setMatrix <- function(matrix = matrix()){
                x <<- matrix
        }
        
        getMatrix <- function() x
                
        setInverse <- function(inverseMatrix = matrix()){ 
                inverse <<- inverseMatrix
        } 
        getInverse <- function() inverse
        list(get = getMatrix, set = setMatrix, getI = getInverse, setI = setInverse)
}


## checks if the given makeCacheMatrix object already has it's inverse calculate.
## If not, it calculates it's inverse and caches it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x' 
        
        if(is.null(x$getI())){
                print("Not cached. Recompuing...") 
                x$setI(solve(x$get()))
        }else {print("Found in cache")}
        
        x$getI()
}
