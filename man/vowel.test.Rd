\name{vowel.test}
\alias{vowel.test}
\docType{data}
\title{ Vowel Recognition (Deterding data)  }
\description{
  Speaker independent recognition of the eleven steady state vowels
  of British English using a specified training set of lpc derived log area
  ratios.
}
\usage{data(vowel.test)}
\format{
  A data frame with 462 observations on the following 11 variables.
  \describe{
    \item{\code{y}}{a numeric vector}
    \item{\code{x.1}}{a numeric vector}
    \item{\code{x.2}}{a numeric vector}
    \item{\code{x.3}}{a numeric vector}
    \item{\code{x.4}}{a numeric vector}
    \item{\code{x.5}}{a numeric vector}
    \item{\code{x.6}}{a numeric vector}
    \item{\code{x.7}}{a numeric vector}
    \item{\code{x.8}}{a numeric vector}
    \item{\code{x.9}}{a numeric vector}
    \item{\code{x.10}}{a numeric vector}
  }
}
\details{
  See the Details section of the help file for \link{vowel.train}.
}
\source{
  David Deterding  (data and non-connectionist analysis)
        Mahesan Niranjan (first connectionist analysis)
        Tony Robinson    (description, program, data, and results)
}
\references{
  neural-bench@cs.cmu.edu
}
\examples{
str(vowel.test)
}
\keyword{datasets}
