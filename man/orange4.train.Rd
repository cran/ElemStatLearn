\name{orange4.train}
\alias{orange4.train}
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
\usage{data(orange4.train)}
\format{
  The format is:
List of 50
 \$ 1 :`data.frame':	100 obs. of  6 variables:
  ..\$ class: int [1:100] -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
  ..\$ F1   : num [1:100] -0.252 -2.482 -2.497  2.220  0.727 ...
  ..\$ F2   : num [1:100]  2.73  1.48 -2.13 -1.64 -2.62 ...
  ..\$ F3   : num [1:100] -0.864  0.411  0.136 -1.809  1.344 ...
  ..\$ F4   : num [1:100] 1.535 1.335 0.482 1.682 0.834 ...
  ..\$ f    : Factor w/ 50 levels "1","2","3","4",..: 1 1 1 1 1 1 1 1 1 1 ...
  ... and then 49 similar ones.
}
\source{ Data simulated for the book. 
}
\examples{
str(orange4.train)
}
\keyword{datasets}
