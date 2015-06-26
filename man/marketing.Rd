\name{marketing}
\alias{marketing}
\docType{data}
%## Example page 444
\title{ Market Basket Analysis  }
\description{
  The dataset is an extract from this survey. It consists of 
14 demographic attributes. The dataset is a good mixture of categorical 
and continuos variables with a lot of missing data. This is characteristic 
for data mining applications. 
}
\usage{data(marketing)}
\format{
  A data frame with 8993 observations on the following 14 variables.
  \describe{
    \item{Income}{ANNUAL INCOME OF HOUSEHOLD (PERSONAL INCOME IF SINGLE)
             1. Less than \$10,000
             2. \$10,000 to \$14,999
             3. \$15,000 to \$19,999
             4. \$20,000 to \$24,999
             5. \$25,000 to \$29,999
             6. \$30,000 to \$39,999
             7. \$40,000 to \$49,999
             8. \$50,000 to \$74,999
             9. \$75,000 or more}
    \item{Sex}{1. Male
             2. Female}
    \item{Marital}{1. Married
             2. Living together, not married
             3. Divorced or separated
             4. Widowed
             5. Single, never married}
    \item{Age}{  1. 14 thru 17
             2. 18 thru 24
             3. 25 thru 34
             4. 35 thru 44
             5. 45 thru 54
             6. 55 thru 64
             7. 65 and Over}
    \item{Edu}{ 1. Grade 8 or less
             2. Grades 9 to 11
             3. Graduated high school
             4. 1 to 3 years of college
             5. College graduate
             6. Grad Study}
    \item{Occupation}{1. Professional/Managerial
             2. Sales Worker
             3. Factory Worker/Laborer/Driver
             4. Clerical/Service Worker
             5. Homemaker
             6. Student, HS or College
             7. Military
             8. Retired
             9. Unemployed}
    \item{Lived}{HOW LONG HAVE YOU LIVED IN THE SAN FRAN./OAKLAND/SAN JOSE AREA?
             1. Less than one year
             2. One to three years
             3. Four to six years
             4. Seven to ten years
             5. More than ten years}
    \item{Dual_Income}{DUAL INCOMES (IF MARRIED)
             1. Not Married
             2. Yes
             3. No}
    \item{Household}{PERSONS IN YOUR HOUSEHOLD
             1. One
             2. Two
             3. Three
             4. Four
             5. Five
             6. Six
             7. Seven
             8. Eight
             9. Nine or more}
    \item{Householdu18}{PERSONS IN HOUSEHOLD UNDER 18
             0. None
             1. One
             2. Two
             3. Three
             4. Four
             5. Five
             6. Six
             7. Seven
             8. Eight
             9. Nine or more}
    \item{Status}{HOUSEHOLDER STATUS
             1. Own
             2. Rent
             3. Live with Parents/Family}
    \item{Home_Type}{1. House
             2. Condominium
             3. Apartment
             4. Mobile Home
             5. Other}
    \item{Ethnic}{1. American Indian
             2. Asian
             3. Black
             4. East Indian
             5. Hispanic
             6. Pacific Islander
             7. White
             8. Other}
    \item{Language}{WHAT LANGUAGE IS SPOKEN MOST OFTEN IN YOUR HOME?
             1. English
             2. Spanish
             3. Other}
  }
}
\details{
  The goal is to predict the Anual Income of Household from the other 13
  demographics  attributes.

Number of instances: 8993.

   These are obtained from the original dataset with 9409 instances,
by removing those observations with the response (Annual Income)
missing.
}
\source{
  Source: Impact Resources, Inc., Columbus, OH (1987). 
  A total of N=9409 questionnaires containg 502 questions were 
  filled out by shopping mall customers in the San Francisco Bay area. 
}
\examples{
str(marketing)
summary(marketing)
}
\keyword{datasets}