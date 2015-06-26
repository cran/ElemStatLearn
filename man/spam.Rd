\name{spam}
\alias{spam}
\docType{data}
\title{ Email Spam Data }
\description{
  SPAM E-mail Database. See Details below.
}
\usage{data(spam)}
\format{
  A data frame with 4601 observations on the following 58 variables.
  \describe{
    \item{A.1}{a numeric vector}
    \item{A.2}{a numeric vector}
    \item{A.3}{a numeric vector}
    \item{A.4}{a numeric vector}
    \item{A.5}{a numeric vector}
    \item{A.6}{a numeric vector}
    \item{A.7}{a numeric vector}
    \item{A.8}{a numeric vector}
    \item{A.9}{a numeric vector}
    \item{A.10}{a numeric vector}
    \item{A.11}{a numeric vector}
    \item{A.12}{a numeric vector}
    \item{A.13}{a numeric vector}
    \item{A.14}{a numeric vector}
    \item{A.15}{a numeric vector}
    \item{A.16}{a numeric vector}
    \item{A.17}{a numeric vector}
    \item{A.18}{a numeric vector}
    \item{A.19}{a numeric vector}
    \item{A.20}{a numeric vector}
    \item{A.21}{a numeric vector}
    \item{A.22}{a numeric vector}
    \item{A.23}{a numeric vector}
    \item{A.24}{a numeric vector}
    \item{A.25}{a numeric vector}
    \item{A.26}{a numeric vector}
    \item{A.27}{a numeric vector}
    \item{A.28}{a numeric vector}
    \item{A.29}{a numeric vector}
    \item{A.30}{a numeric vector}
    \item{A.31}{a numeric vector}
    \item{A.32}{a numeric vector}
    \item{A.33}{a numeric vector}
    \item{A.34}{a numeric vector}
    \item{A.35}{a numeric vector}
    \item{A.36}{a numeric vector}
    \item{A.37}{a numeric vector}
    \item{A.38}{a numeric vector}
    \item{A.39}{a numeric vector}
    \item{A.40}{a numeric vector}
    \item{A.41}{a numeric vector}
    \item{A.42}{a numeric vector}
    \item{A.43}{a numeric vector}
    \item{A.44}{a numeric vector}
    \item{A.45}{a numeric vector}
    \item{A.46}{a numeric vector}
    \item{A.47}{a numeric vector}
    \item{A.48}{a numeric vector}
    \item{A.49}{a numeric vector}
    \item{A.50}{a numeric vector}
    \item{A.51}{a numeric vector}
    \item{A.52}{a numeric vector}
    \item{A.53}{a numeric vector}
    \item{A.54}{a numeric vector}
    \item{A.55}{a numeric vector}
    \item{A.56}{a numeric vector}
    \item{A.57}{a numeric vector}
    \item{spam}{Factor w/ 2 levels "email", "spam"}
  }
}
\details{
    The "spam" concept is diverse: advertisements for products/web
        sites, make money fast schemes, chain letters, pornography...
	Our collection of spam e-mails came from our postmaster and 
	individuals who had filed spam.  Our collection of non-spam 
	e-mails came from filed work and personal e-mails, and hence
	the word 'george' and the area code '650' are indicators of 
	non-spam.  These are useful when constructing a personalized 
	spam filter.  One would either have to blind such non-spam 
	indicators or get a very wide collection of non-spam to 
	generate a general purpose spam filter.

        For background on spam:
        Cranor, Lorrie F., LaMacchia, Brian A.  Spam! 
        Communications of the ACM, 41(8):74-83, 1998.

        Attribute Information:
The last column of 'spambase.data' denotes whether the e-mail was 
considered spam (1) or not (0), i.e. unsolicited commercial e-mail.  
Most of the attributes indicate whether a particular word or
character was frequently occuring in the e-mail.  The run-length
attributes (55-57) measure the length of sequences of consecutive 
capital letters.  For the statistical measures of each attribute, 
see the end of this file.  Here are the definitions of the attributes:

48 continuous real [0,100] attributes of type word\_freq\_WORD 
= percentage of words in the e-mail that match WORD,
i.e. 100 * (number of times the WORD appears in the e-mail) / 
total number of words in e-mail.  A "word" in this case is any 
string of alphanumeric characters bounded by non-alphanumeric 
characters or end-of-string.

6 continuous real [0,100] attributes of type char\_freq\_CHAR
= percentage of characters in the e-mail that match CHAR,
i.e. 100 * (number of CHAR occurences) / total characters in e-mail

1 continuous real [1,...] attribute of type capital\_run\_length\_average
= average length of uninterrupted sequences of capital letters

1 continuous integer [1,...] attribute of type capital\_run\_length\_longest
= length of longest uninterrupted sequence of capital letters

1 continuous integer [1,...] attribute of type capital\_run\_length\_total
= sum of length of uninterrupted sequences of capital letters
= total number of capital letters in the e-mail

1 nominal \{0,1\} class attribute of type spam
= denotes whether the e-mail was considered spam (1) or not (0), 
i.e. unsolicited commercial e-mail.  
}
\source{
    (a) Creators: Mark Hopkins, Erik Reeber, George Forman, Jaap Suermondt
        Hewlett-Packard Labs, 1501 Page Mill Rd., Palo Alto, CA 94304
   (b) Donor: George Forman (gforman at nospam hpl.hp.com)  650-857-7835
   (c) Generated: June-July 1999
}
\references{
  \url{http://www.ics.uci.edu/~mlearn/MLRepository.html}
}
\examples{
head(str(spam))
\dontrun{
if(require(prim)){ # This uses too much time!
   X <- spam[,1:57]
   Y <- ifelse(spam$spam=="spam", 1, 0)
   spam.prim1 <- prim.box(X, Y, threshold.type=1,  verbose=TRUE)
   summary(spam.prim1)
} # use of prim package.
}
# The following example uses too much time and must be put inside a
# dontrun construction. Also summary(spam.earth) killed the R process
# ...
\dontrun{
if(require(earth)){
   spam.earth <- earth(spam[, 1:57], spam$spam,
         glm=list(family=binomial),
         trace=1, keepxy=TRUE, degree=1, nfold=10)
   summary(spam.earth)
} # use of earth package
} # end of dontrun block
if(require(mda)){
 spam.mars <- mars(spam[, 1:57],
                   ifelse(spam$spam=="spam", 1, 0),
                   degree=1, nk=50, trace.mars=TRUE)
 summary(spam.mars)
} # end require(mda) block
}
\keyword{datasets}

