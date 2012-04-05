\name{orange4.test}
\alias{orange4.test}
\docType{data}
\title{ Simulated Orange Data}
\description{
  These simulation data are described on the revised page 384-5 of the
  book. See the errata file for a revised version if your book is not
  the fourth or later printing.

  There are 50 x four datasets - training and test data for the four
  dimensional problem, and training and test data for the 10
  dimensional problem.
}
\usage{data(orange4.test)}
\format{
  The format is:
List of 50
 \$ 1 :`data.frame':	1000 obs. of  6 variables:
  ..\$ class: int [1:1000] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
  ..\$ F1   : num [1:1000]  2.352 -0.295  1.000 -0.133 -0.774 ...
  ..\$ F2   : num [1:1000] -1.56 -2.08  1.59 -1.39  0.25 ...
  ..\$ F3   : num [1:1000] -1.058  0.355  1.779  2.281  1.486 ...
  ..\$ F4   : num [1:1000] -0.0382  2.2957 -1.8081  1.5588 -3.0523 ...
  ..\$ f    : Factor w/ 50 levels "1","2","3","4",..: 1 1 1 1 1 1 1 1 1 1 ...
  ... and then 49 similar ones.
}
\source{ Data simulated for the book.
  }
\examples{
str(orange4.test)
}
\keyword{datasets}
