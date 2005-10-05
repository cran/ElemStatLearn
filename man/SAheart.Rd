\name{SAheart}
\alias{SAheart}
\docType{data}
%## Example in book pages 100, 122, 181
\title{ South African Hearth Disease Data   }
\description{
  A retrospective sample of males in a heart-disease high-risk region
  of the Western Cape, South Africa.
}
\usage{data(SAheart)}
\format{
  A data frame with 462 observations on the following 10 variables.
  \describe{
    \item{sbp}{systolic blood pressure}
    \item{tobacco}{cumulative tobacco (kg)}
    \item{ldl}{low densiity lipoprotein cholesterol}
    \item{adiposity}{a numeric vector}
    \item{famhist}{family history of heart disease, a factor with levels 
                         \code{Absent} \code{Present}}
    \item{typea}{type-A behavior}
    \item{obesity}{a numeric vector}
    \item{alcohol}{current alcohol consumption}
    \item{age}{age at onset}
    \item{chd}{response, coronary heart disease}
  }
}
\details{
  A retrospective sample of males in a heart-disease high-risk region
of the Western Cape, South Africa. There are roughly two controls per
case of CHD. Many of the CHD positive men have undergone blood
pressure reduction treatment and other programs to reduce their risk
factors after their CHD event. In some cases the measurements were
made after these treatments. These data are taken from a larger
dataset, described in  Rousseauw et al, 1983, South African Medical
Journal. 
}
\source{
  
}
\examples{
str(SAheart) 
}
\keyword{datasets}
