## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

#Set the value of the matrix
 			m <- NULL
        		setmatrix <- function(y) {
                		x <<- y
                		m <<- NULL
        }
#Get the value of the matrix
			getmatrix <- function() x

#Set the inverse of the matrix
			setinverse <- function(inverse) m<<-inverse 

#Get the inverse of the matrix
			getinverse <- function() m

#List all the functions created
			list(setmatrix = setmatrix, getmatrix = getmatrix, setinverse = setinverse, getinverse = getinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

#using the getinverse() function to save in "m" what that function does.    		
			m <- x$getinverse()
        		if(!is.null(m)) {
                		message("getting cached data")
                		return(m)
        		}			

#using the getmatrix function to define the matrix we are going to take to calculate its inverse 
        		data <- x$getmatrix()

#Calculating the inverse of the matrix
        		m <- solve(data, ...)

#Using the setinverse function to set that the inverse calculated is the "inverse"
        		x$setinverse(m)

#Returns m (the inverse of the matrix)        		
			m
}
