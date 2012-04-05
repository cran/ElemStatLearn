\name{zip.train}
\alias{zip.train}
\docType{data}
\title{ Handwritten Digit Recognition Data  }
\description{
   This example is a character recognition task: classification of handwritten 
  numerals. This problem captured the attention of the machine learning 
  and neural network community for many years, and has remained a benchmark problem 
  in the field. 
}
\usage{data(zip.train)}
\format{
  The format is:
 num [1:7291, 1:257] 6 5 4 7 3 6 3 1 0 1 ...
}
\details{
  Normalized handwritten digits, automatically
scanned from envelopes by the U.S. Postal Service. The original
scanned digits are binary and of different sizes and orientations; the
images  here have been deslanted and size normalized, resulting
in 16 x 16 grayscale images (Le Cun et al., 1990).

The data are in two gzipped files, and each line consists of the digit
id (0-9) followed by the 256 grayscale values.

There are 7291 training observations and 2007 test observations,
distributed as follows:
         0    1   2   3   4   5   6   7   8   9 Total
Train 1194 1005 731 658 652 556 664 645 542 644 7291
 Test  359  264 198 166 200 160 170 147 166 177 2007

or as proportions:
         0    1   2    3    4    5    6    7    8    9 
Train 0.16 0.14 0.1 0.09 0.09 0.08 0.09 0.09 0.07 0.09
 Test 0.18 0.13 0.1 0.08 0.10 0.08 0.08 0.07 0.08 0.09

The test set is notoriously "difficult", and a 2.5% error rate is
excellent. These data were kindly made available by the neural network
group at AT&T research labs (thanks to Yann Le Cunn).
}
\examples{
findRows <- function(zip, n) {
 # Find  n (random) rows with zip representing 0,1,2,...,9
 res <- vector(length=10, mode="list")
 names(res) <- 0:9
 ind <- zip[,1]
 for (j in 0:9) {
    res[[j+1]] <- sample( which(ind==j), n ) }
 return(res) }

# Making a plot like that on page 4:

digits <- vector(length=10, mode="list")
names(digits) <- 0:9
rows <- findRows(zip.train, 6)
for (j in 0:9) {
    digits[[j+1]] <- do.call("cbind", lapply(as.list(rows[[j+1]]), 
                       function(x) zip2image(zip.train, x)) )
}
im <- do.call("rbind", digits)
image(im, col=gray(256:0/256), zlim=c(0,1), xlab="", ylab="" )    
}
\keyword{datasets}
