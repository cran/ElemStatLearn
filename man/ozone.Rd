\name{ozone}
\alias{ozone}
\docType{data}
%## Figure page 176 in book.
\title{ Ozone Data  }
\description{
  Ozone data from New York.
}
\usage{data(ozone)}
\format{
  A data frame with 111 observations on the following 4 variables.
  \describe{
    \item{ozone}{a numeric vector}
    \item{radiation}{a numeric vector}
    \item{temperature}{a numeric vector}
    \item{wind}{a numeric vector}
  }
}
\details{
  Data frame with components: ozone, radiation, temperature, and wind.
  Measurements of daily ozone con- centration (ppb), wind speed (mph),
  daily maximum temperature (degrees F), and solar radiation
  (langleys) on 111 days from May to September 1973 in New York.  This
  data frame is similar to air in S-PLUS (or library(data) in S), but
  has a different definition for ozone (air contains cube-roots of
  ozone).
}
\examples{
str(ozone)
plot(ozone)
}
\keyword{datasets}
