\name{galaxy}
\alias{galaxy}
\docType{data}
%## Example page 175
\title{ Galaxy Data}
\description{
  Radial Velocity of Galaxy NGC7531
}
\usage{data(galaxy)}
\format{
  A data frame with 323 observations on the following 5 variables.
  \describe{
    \item{east.west}{the east-west coordinate.  The origin,  (0,0),  is
       near  the  center of the galaxy, east is negative, west is
       positive.}
    \item{north.south}{the north-south coordinate.  The origin, (0,0), is
       near the center of the galaxy, south is negative, north is
       positive.}
    \item{angle}{degrees of counter-clockwise rotation from the horizon-
       tal of the slot within which the observation lies.}
    \item{radial.position}{signed  distance  from  origin;  negative  if
       east-west coordinate is negative.}
    \item{velocity}{radial velocity measured in km/sec.}
  }
}
\details{
  The galaxy data frame records the  radial  velocity  of  a
       spiral  galaxy  measured  at 323 points in the area of sky
       which it covers.  All the measurements  lie  within  seven
       slots  crossing at the origin.  The positions of the meas-
       urements given by four variables (columns).
}
\source{
  Buta, R. (1987)  The  Structure  and  Dynamics  of  Ringed
       Galaxies,  III:  Surface  Photometry and Kinematics of the
       Ringed Nonbarred Spiral NGC7531.    The  Astrophysical  J.
       Supplement Ser. Vol. 64, pp. 1--37.

         John M. Chambers and Trevor J. Hastie, (eds.)  Statistical
       Models in S, Wadsworth and Brooks, Pacific Grove, CA 1992,
       pg. 352.
}
\examples{
str(galaxy) 
summary(galaxy)
}
\keyword{datasets}
