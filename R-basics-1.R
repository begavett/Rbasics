## ----setup, include=FALSE---------------------------------------------------------------------------------------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----ex15, eval = FALSE-----------------------------------------------------------------------------------------------------------------------------------------
## 2 + 2
## 5
## x <- 5
## print(x)
## x
## y <- 100
## y
## z <- x + y
## z
## z - x == y
## a_message <- "Case matters!"
## a_Message
## a_message
## "Text goes in quotes, numbers don't"
## "I am purposefully leaving off the closing quotation marks and running this command anyway!


## ----firstPackages, eval = FALSE--------------------------------------------------------------------------------------------------------------------------------
## install.packages("car")


## ----annotationExample, echo = TRUE, eval = FALSE---------------------------------------------------------------------------------------------------------------
## 2 + 2 # R can do basic math!
## 5 # R will also echo back numbers to me
## x <- 5 # No output was produced.
## print(x) # R saved the number 5 as an object named x. That's what the <- (left arrow) does.
## x # I can print the contents of x with or without the print command
## y <- 100 # R is storing the number 100 as an object named y
## y # This lets me see what's stored in y
## z <- x + y # Basic algebra
## z # The object named z is now storing the value 105 (x + y = 5 + 100)
## z - x == y # The double equals sign tells R to check whether two values are equal
## a_message <- "Case matters!" # We are storing a text value inside an object called a_message
## a_Message # This produced an error because the M was capitalized
## a_message # This worked because I used the correct case
## "Text goes in quotes, numbers don't" # R will also echo back text to me.
## "I am purposefully leaving off the closing quotation marks and running this command anyway!
## 
## # Nothing happens...
## # R is waiting for me to close the quotation marks I left open (note the + symbol in the console instead of the > symbol
## # and the red stop button, which tells me R is not ready for a new command yet.)


## ----ip, eval = FALSE-------------------------------------------------------------------------------------------------------------------------------------------
## install.packages("pacman")


## ----lp---------------------------------------------------------------------------------------------------------------------------------------------------------
library(pacman)


## ----otherPackages----------------------------------------------------------------------------------------------------------------------------------------------
p_load(tidyverse, psych)


## ----rescale, eval = FALSE--------------------------------------------------------------------------------------------------------------------------------------
## myScores <- c(101, 130, 65, 87, 119, 102, 74, 96, 101, 88) # Put 10 made up scores into an object called myScores
## rescale(x = myScores) # runs the rescale command on the data stored in the myScores object


## ----rescale2, eval = FALSE-------------------------------------------------------------------------------------------------------------------------------------
## myScores <- c(101, 130, 65, 87, 119, 102, 74, 96, 101, 88)
## rescale(x = myScores)


## ----rescale3, eval = FALSE-------------------------------------------------------------------------------------------------------------------------------------
## rescale(101, 130, 65, 87, 119, 102, 74, 96, 101, 88)


## ----rescale4, eval = FALSE-------------------------------------------------------------------------------------------------------------------------------------
## rescale(c(101, 130, 65, 87, 119, 102, 74, 96, 101, 88))


## ----mean1------------------------------------------------------------------------------------------------------------------------------------------------------
?mean


## ----mean2------------------------------------------------------------------------------------------------------------------------------------------------------
mean(12, 58, 481, 84, 9)


## ----mean3------------------------------------------------------------------------------------------------------------------------------------------------------
mean(c(12, 58, 481, 84, 9))

