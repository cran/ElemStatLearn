\name{nci}
\alias{nci}
\docType{data}
%## Microarray example, book pages 5, 462, 485
\title{ NCI microarray data (chap 14)  }
\description{
  Human Tumour Microarray Data
}
\usage{data(nci)}
\format{
  The format is:
 num [1:6830, 1:64]  0.300  1.180  0.550  1.140 -0.265 ...
 - attr(*, "dimnames")=List of 2
  ..$ : NULL
  ..$ : chr [1:64] "CNS" "CNS" "CNS" "RENAL" ...
}
\source{
  \url{http://genome-www.stanford.edu/nci60/}
}
\examples{
str(nci)
summary(nci)
}
\keyword{datasets}
