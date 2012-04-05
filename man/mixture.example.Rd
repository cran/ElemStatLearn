\name{mixture.example}
\alias{mixture.example}
\docType{data}
%## Example beginning page 13 of book
\title{ Mixture Example  }
\description{
  This is a simulated mixture example with 200 instances and two 
  classes. 100 members in each class.
}
\usage{data(mixture.example)}
\format{
  The format is:
List of 8
 \$ x       : 200 x 2 matrix of training predictors
 \$ y       : 200 x 2 matrix of class labels, 0==green, 1==red
 \$ xnew    : matrix [1:6831, 1:2] -2.6 -2.5 -2.4 -2.3 -2.2 ...
  ..- attr(*, "class")= chr "matrix"
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:6831] "1" "2" "3" "4" ...
  .. ..$ : chr [1:2] "x1" "x2"
         : matrix 6831 x 2 of lattice points in predictor space
 \$ prob    : atomic [1:6831] 3.55e-05 3.05e-05 2.63e-05 2.27e-05 1.96e-05 ...
  ..- attr(*, ".Names")= chr [1:6831] "1" "2" "3" "4" ...
              vector of 6831 probabilities (of class RED) at each 
	       lattice point
 \$ marginal: atomic [1:6831] 6.65e-15 2.31e-14 7.62e-14 2.39e-13 7.15e-13 ...
  ..- attr(*, ".Names")= chr [1:6831] "1" "2" "3" "4" ...
           : marginal probability at each lattice point
 \$ px1     : 69 lattice coordinates for x.1
 \$ px2     : 99 lattice values for x.2  (69*99=6831)
 \$ means   : num [1:20, 1:2] 
           : 20 x 2 matrix of the mixture centers, first ten for one
	       class, next ten for the other
}
\examples{
str(mixture.example)
if(interactive())par(ask=TRUE)
x <- mixture.example$x
 g <- mixture.example$y
 x.mod <- lm( g ~ x)
 # Figure 2.1:
 plot(x, col=ifelse(g==1,"red", "green"), xlab="x1", ylab="x2")
 coef(x.mod)
 abline( (0.5-coef(x.mod)[1])/coef(x.mod)[3], -coef(x.mod)[2]/coef(x.mod)[3])
 ghat <- ifelse( fitted(x.mod)>0.5, 1, 0)
 length(ghat)

 sum(ghat == g)

 1 - sum(ghat==g)/length(g)
 #[1] 0.27
 # Training misclassification rate
 xnew <- mixture.example$xnew
 dim(xnew)
 colnames(xnew)

 library(class)

 mod15 <- knn(x, xnew, g, k=15, prob=TRUE)
 summary(mod15)
  #Figure 2.2:
 plot(x, col=ifelse(g==1,"red", "green"),xlab="x1", ylab="x2")

 str(mod15)
 prob <- attr(mod15, "prob")
 prob <- ifelse( mod15=="1", prob, 1-prob) # prob is voting fraction for winning class!
                                           # Now it is voting fraction for red==1

 px1 <- mixture.example$px1
 px2 <- mixture.example$px2

 prob15 <- matrix(prob, length(px1), length(px2))
 contour(px1, px2, prob15, levels=0.5, labels="", xlab="x1", ylab="x2", main=
           "15-nearest neighbour")
 # adding the points to the plot:
 points(x, col=ifelse(g==1, "red", "green"))

 ghat15 <- ifelse(knn(x,x,k=15, cl=g)=="1", 1, 0)
 sum(ghat15==g)
 # [1] 169
 1 - sum(ghat15==g)/length(g)
 # [1] 0.155
 # Misclassification rate for knn(, k=15)


 # Then we want the plot for knn with k=1: (Figure 2.3)

 mod1 <- knn(x, xnew, k=1, cl=g, prob=TRUE)
 prob <- attr(mod1, "prob")
 prob <- ifelse( mod1=="1", prob, 1-prob) # prob now is voting 
                                          # fraction for "red"
 prob1 <- matrix(prob, length(px1), length(px2) )
 contour(px1, px2, prob1, level=0.5, labels="", xlab="x1", ylab="x2", main=
                "1-nearest neighbour")
 # Adding the points to the plot:
 points(x, col=ifelse(g==1, "red", "green"))

 # Reproducing figure 2.4, page 17 of the book:
 # The data do not contain a test sample, so we make one,
 # using the description of the oracle page 17 of the book: The centers 
 # is in the means component of mixture.example, with green(0) first, 
 # so red(1).  For a test sample of size 10000 we simulate
 # 5000 observations of each class.

 library(MASS)
    set.seed(123)
    centers <- c(sample(1:10, 5000, replace=TRUE), 
                 sample(11:20, 5000, replace=TRUE))
    means <- mixture.example$means
    means <- means[centers, ]
    mix.test <- mvrnorm(10000, c(0,0), 0.2*diag(2))
    mix.test <- mix.test + means
    cltest <- c(rep(0, 5000), rep(1, 5000))
 
    ks <- c(1,3,5,7,9,11,15,17,23,25,35,45,55,83,101,151 )
    # nearest neighbours to try
    nks <- length(ks)
    misclass.train <- numeric(length=nks)
    misclass.test  <- numeric(length=nks)
    names(misclass.train) <- names(misclass.test) <- ks
    for (i in seq(along=ks)) {
      mod.train <- knn(x,x,k=ks[i],cl=g)
      mod.test  <- knn(x, mix.test,k= ks[i],cl= g)
      misclass.train[i] <- 1 - sum(mod.train==factor(g))/200
      misclass.test[i] <- 1 - sum(mod.test==factor(cltest))/10000
    }
    print(cbind(misclass.train, misclass.test))

# Using package mclust02  # Note that this package is no longer on CRAN,
#                           but must be searched in the archives.
  
\dontrun{
 if(require(mclust02)){
 x <- mixture.example$x
 g <- mixture.example$y
 xnew <- mixture.example$xnew
 px1 <- mixture.example$px1
 px2 <- mixture.example$px2

 mix.mclust <- mclustDA(x, g, xnew, G=1:6, verbose=TRUE)
 mix.mclust
} # end require (mclust02)
} # end \dontrun

# Figure 2.4
plot(misclass.train,xlab="Number of NN",ylab="Test error",type="n",xaxt="n")
axis(1, 1:length(ks), as.character(ks))
lines(misclass.test,type="b",col='blue',pch=20)
lines(misclass.train,type="b",col='red',pch=20)
legend("bottomright",lty=1,col=c("red","blue"),legend = c("train ", "test "))

#Figure 2.5
prob<-mixture.example$prob
prob.bayes <- matrix(prob, length(px1), length(px2))
contour(px1, px2, prob.bayes, levels=0.5, labels="", xlab="x1",
ylab="x2",
            main="Bayes decision boundary")
            points(x, col=ifelse(g==1, "red", "green"))

}
\keyword{datasets}
