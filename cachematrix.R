## this fuction will simplify the task of obtaining or getting the inverse of an 
##invertible matrix
##will use solve() since it only handles square matrices

## Function that computes the inverse of a matrix

makeCacheMatrix <- function(x=matrix()) {
  #m<-NULL
  set<-function(y){
    x<<-y
  # m<<-NULL
  }
get1<-function()x
setmatrix<-function(solve)m<<-solve
getmatrix<-function()x
list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## the function below is used to obtin the inverse of any "square" matrix in this case x

cacheSolve <- function(x1) {
  m<-x1$getmatrix()
  print(m)
  if(!is.null(m)){
    message("obtain cached data")
    return(m)
  }
  #print(x)
  matrix2<-x$get()
  m<-solve(matrix2)
  ## Return a matrix that is the inverse of 'x'
  x$Setmatrix(m)
}

#x<-matrix(c(1,-2,-2,3),ncol=2,byrow=T)

#solve(x)
#testing the function if it works
mat<-matrix(data=c(4,2,7,6),nrow=2,ncol=2)
mat2<-makeCacheMatrix(mat)
class(mat)
cacheSolve(mat2)







