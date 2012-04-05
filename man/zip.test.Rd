\name{zip.test}
\alias{zip.test}
\docType{data}
\title{ Handwritten Digit Recognition Data  }
\description{
  This example is a character recognition task: classification of handwritten 
  numerals. This problem captured the attention of the machine learning 
  and neural network community for many years, and has remained a benchmark problem 
  in the field. 
}
\usage{data(zip.test)}
\format{
  The format is:
 num [1:2007, 1:257] 9 6 3 6 6 0 0 0 6 9 ...
}
\details{
  Normalized handwritten digits, automatically
scanned from envelopes by the U.S. Postal Service. The original
scanned digits are binary and of different sizes and orientations; the
images  here have been deslanted and size normalized, resulting
in 16 x 16 grayscale images (Le Cun et al., 1990).

The data are in two gzipped files, and each line consists of the digit
id (0-9) followed by the 256 grayscale values.

There are 7291 training observations and 2007 test observations,
distributed as follows:
         0    1   2   3   4   5   6   7   8   9 Total
Train 1194 1005 731 658 652 556 664 645 542 644 7291
 Test  359  264 198 166 200 160 170 147 166 177 2007

or as proportions:
         0    1   2    3    4    5    6    7    8    9 
Train 0.16 0.14 0.1 0.09 0.09 0.08 0.09 0.09 0.07 0.09
 Test 0.18 0.13 0.1 0.08 0.10 0.08 0.08 0.07 0.08 0.09

The test set is notoriously "difficult", and a 2.5% error rate is
excellent. These data were kindly made available by the neural network
group at AT&T research labs (thanks to Yann Le Cunn).
}
\keyword{datasets}
