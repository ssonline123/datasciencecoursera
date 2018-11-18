# Coursera Course 2 week 3 assignment - lexical scoping

#function to make a cache matrix
makeCacheMatrix <- function (inp_matrix = matrix())
{
        inv_matrix <- NULL
        set <- function (y) {
                inp_matrix <<- y
                inv_matrix <<- NULL
                
        }
        get <- function()
                inp_matrix
        setinv <-
                function (inv_matrix_1)
                        inv_matrix <<- inv_matrix_1
        getinv <- function()
                inv_matrix
        list(
                get = get,
                set = set,
                setinv = setinv,
                getinv = getinv
        )
}

#function to return inverse matrix
cacheSolve <- function(inp_matrix = matrix(), ...) {
        inv_matrix <- inp_matrix$getinv()
        if (!is.null(inv_matrix)) {
                message("getting cached data")
                return(inv_matrix)
        }
        data <- inp_matrix$get()
        inv_matrix <- solve(data)
        inp_matrix$setinv(inv_matrix)
        inv_matrix
}