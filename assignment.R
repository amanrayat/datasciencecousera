makeCacheMatrix<-function(a=matrix()){
  setmat<-function(){
    a<<-y
    m<<-NULL
  }
  getmat<-function() a
  calc_inv<-function(a) m<<-solve(a)
  get_inv<-function() m
}
cacheSolve<-function(a,...){
  m <- a$get_inv()
  if(!is.null(m)) {
    message("retriving data")
    return(m)
  }
  ans <- x$getmat()
  m <- solve(data, ...)
  a$set_inv(m)
  m
}