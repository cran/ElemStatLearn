\name{bone}
\alias{bone}
\docType{data}
%## Example page 128 in the book
\title{  Bone Mineral Density Data  }
\description{
  Measurements in the bone mineral density of 261 north american 
  adolescents, as function of age. Each value is the difference in spnbmd
  taken on two consecutive visits, divided by the average. The age is
  the average age over the two visits.
}
\usage{data(bone)}
\format{
  A data frame with 485 observations on the following 4 variables.
  \describe{
    \item{idnum}{identifies the child, and hence the repeat measurements}
    \item{age}{average of age at two visits}
    \item{gender}{a factor with levels \code{female} \code{male}}
    \item{spnbmd}{Relative Spinal bone mineral density measurement}
  }
}
\source{
  Bachrach LK, Hastie T, Wang M-C, Narasimhan B, Marcus R. Bone Mineral
Acquisition in Healthy Asian, Hispanic, Black and Caucasian Youth. A
Longitudinal Study. J Clin Endocrinol Metab (1999) 84, 4702-12.
}
\examples{
summary(bone)
# We ignore the repeat measurements:
# smooth.spline is in standard package stats.
names(bone)
# Plot page 128 in the book:
plot(spnbmd ~ age, data=bone, col = 
     ifelse(gender=="male", "blue", "red2"), 
     xlab="Age", ylab="Relative Change in Spinal BMD")
bone.spline.male <- with(subset(bone,gender=="male"),
                smooth.spline(age, spnbmd,df=12))
bone.spline.female <- with(subset(bone, gender=="female"), 
                smooth.spline(age, spnbmd, df=12))
lines(bone.spline.male, col="blue")
lines(bone.spline.female, col="red2")
legend(20,0.20, legend=c("male", "Female"), col=c("blue", "red2"), 
          lwd=2)
}
\keyword{datasets}
