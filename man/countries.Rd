\name{countries}
\alias{countries}
\docType{data}
%## Example "Country dissimilarities" in book page 469
\title{ Country Dissimilarities  }
\description{
  Political science students were asked to give pairwise dissimilarities 
  for 12 countries.
}
\usage{data(countries)}
\format{
  The format is:
 num [1:12, 1:12] 0 5.58 7 7.08 4.83 2.17 6.42 3.42 2.5 6.08 ...
 - attr(*, "dimnames")=List of 2
  ..$ : chr [1:12] "BEL" "BRA" "CHI" "CUB" ...
  ..$ : chr [1:12] "BEL" "BRA" "CHI" "CUB" ...
}
\details{
   These are average dissimilarities over students.    
}
\source{
  Kaufman, L. and Rousseeuw, P. (1990) Finding Groups in data: An Introduction 
   to Cluster Analysis, Wiley, New York.
}
\examples{
str(countries)
colnames(countries)
rownames(countries)
if(require(MASS)){
# We use multidimensional scaling:
   if(interactive())par(ask=TRUE)
   countries.cmdscale <- cmdscale(countries, k=2, eig=TRUE)
   eqscplot(countries.cmdscale$points)
   countries.sam <- sammon(countries)
   eqscplot(countries.sam$points)
}
}
\keyword{datasets}
