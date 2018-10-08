ftest<-function(){
  s1=var(rnorm(5))
  s2=var(rnorm(10))
 
  return (s1/s2)
}

x=replicate(1000,ftest())
hist(x,breaks=100,freq=FALSE,xlim=c(0,7),ylim=c(0,1.0),col="green")
xx<-seq(0,7,0.01)
lines(xx,df(xx,4,9),col="blue")
rug(x)

x=rf(1000,4,9)
hist(x,breaks=100,freq=FALSE,xlim=c(0,7),ylim=c(0,1.0),col="green")
xx<-seq(0,7,0.01)
lines(xx,df(xx,4,9),col="blue",lty=3,lwd=1)
rug(x)
