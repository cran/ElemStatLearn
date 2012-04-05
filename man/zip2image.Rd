\name{zip2image}
\alias{zip2image}
\title{ function to convert row of zip file to format used by image() }
\description{
  This is a utility function converting zip.train/zip.test data 
  to format useful for plotting with the function \code{\link{image}}.
}
\usage{
zip2image(zip, line)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{zip}{ \code{\link{zip.train}} or \code{\link{zip.test}}.}
  \item{line}{ row of matrix to take }
}
\value{
  16 x 16 matrix suitable as argument for \code{\link{image}}.
}
\author{ Kjetil Halvorsen }

\examples{
## See example section of help file for zip.train
}
\keyword{ dplot }% 
