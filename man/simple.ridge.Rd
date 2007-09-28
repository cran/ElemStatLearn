\name{simple.ridge}
\alias{simple.ridge}
\title{ Simple Ridge Regression  }
\description{
  Function to do simple ridge regression.
}
\usage{
   simple.ridge(x, y, lambda = 1, df, ...)
}
\arguments{
  \item{x}{ predictor matrix, NA's not allowed. Should not include a column of 1's. }
  \item{y}{ response matrix, NA's not allowed }
  \item{lambda}{ vector of ridge coefficients }
  \item{df}{ vector of target degrees of freedom. lambda is calculated from these. }
  \item{\dots}{ Presently not used}
}
\details{
  Principal advantage with this compared to other implementations 
  of ridge regression in \R is that we can do the calculations 
  for multiple degrees of freedom at once. Ridging is not applied to the intercept.
}
\value{
  List with components:
  \item{beta0 }{intercept}
  \item{beta }{matrix of coefficients. One column for each lambda}
  \item{lambda}{lambda used}
  \item{df}{df used}
}
\author{ Kjetil B. Halvorsen }

\examples{
# See examples for \link{prostate}.
}
\keyword{ regression }
