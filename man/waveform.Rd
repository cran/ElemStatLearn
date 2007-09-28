\name{waveform}
\alias{waveform}
\title{ Function to simulate waveform data }
\description{
  Simulates waveform data, as in the book page 402.
}
\usage{
waveform(n)
}
\arguments{
  \item{n}{ Number of waveforms to simulate}
}
\details{
  The formulas are given in the book page 402.
}
\value{
  Dataframe with two variables, \code{x}, a matrix with 21 columns, 
  and a vector 
  \code{y} with class labels.
}
\author{ Kjetil Halvorsen }
\seealso{ \link{waveform.train} and \link{waveform.test}.}
\keyword{ datagen }
