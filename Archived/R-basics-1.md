<!-- output: slidy_presentation -->

output: md\_document: variant: markdown\_github

# Really quick introduction to R and RStudio

No need to run R itself - use RStudio (requires R to be installed)

  - Top left: scripting window
      - 90% of the work happens here
  - Bottom left: Console (+ Terminal & Jobs)
      - The interactive part of R
  - Top right: Environment & History
      - What’s in memory for the current session
  - Bottom right: Files, Plots, Packages, and Help.
      - Helpful tools and visuals

# The extreme basics of R syntax

`object <- value`

  - The arrow assignment operator (`<-`) tells R to store what’s on the
    right of the arrow in the object named on the left side of the
    arrow.
      - The object on the left can be given almost any name you choose,
        with several exceptions:
          - It can’t start with a number (e.g., `1stVariable` won’t work
            - use `firstVariable` instead)
          - It can’t contain spaces (e.g., `first variable` won’t work -
            use `first_variable` instead)
          - It can’t contain special characters other than an underscore
            or a period.
          - You should avoid giving it a name that is already used by R
            (although this is technically allowed, it is not best
            practice)
              - e.g., `mean` is a function in R that is used to
                calculate the mean.
                  - Therefore, you should avoid creating an object
                    called `mean`.
      - The part on the right can be pretty much anything numeric (not
        quoted unless you don’t want it to be treated as a number) or
        text (all text must be surrounded by single or double quotation
        marks) or more complex things that we will eventually cover.

# R Objects

Once an object is created, it can be viewed or manipulated.

  - To see the contents of an object, just call the object’s name, or,
    to be more explicit, ask its contents to be printed.
      - `object`
      - `print(object)`
  - An example of manipulating an object would be to perform some
    mathematical operation on the object.
      - `object + 1` (adds 1 to each element stored in `object`)
      - `sqrt(object)` (takes the square root of each element in
        `object`)
      - `object^2` (squares the value of each element in `object`)

The syntax `print(object)` and `sqrt(object)` both illustrate another
feature of R: functions. We’ll cover these more later.

  - `print` and `sqrt` are the functions, and `object` is what is passed
    to the function.

# Interactive console (bottom left)

Try these 15 basic exercises. Type the following commands next to the
`>` and then press Enter/Return. Make note of what happens.

``` r
2 + 2
5
x <- 5
print(x)
x
y <- 100
y
z <- x + y
z
z - x == y
a_message <- "Case matters!"
a_Message
a_message
"Text goes in quotes, numbers don't"
"I am purposefully leaving off the closing quotation marks and running this command anyway!
```

# Prereqisites

## Prereqisite 1

Make sure your software is up to date.

  - R <https://cran.r-project.org/>
  - RStudio <https://www.rstudio.com/products/rstudio/download/>

# Prereqisites

**Please read the following instructions closely before diving in.**

Let’s make sure you are able to install packages.

First, run the following command in the RStudio console:

``` r
install.packages("car")
```

If you get an error, you’ll need to work through the steps below.
Otherwise, you can ignore these steps.

*Installing packages can be a problem on any computer on which you do
not have administrative privileges.*

# Prereqisite 2 (Mac)

  - Mac:
    1.  Using Finder, create new folder under `/Users/brandon`
        (replacing `brandon` with your Mac login name) called
        `RPackages` (`/Users/brandon/RPackages`)
    2.  In RStudio, run `install.packages("usethis")` from the
        interactive console (bottom left)
    3.  In RStudio, run `usethis::edit_r_environ()`. A window in RStudio
        will open (called `.Renviron`)
    <!-- end list -->
      - Type `R_LIBS_USER=/Users/brandon/Rpackages` in that new window
        (replacing `brandon` with your Mac login name)
      - Do not try to execute this command in R. We are creating a file
        to save on your hard drive, not trying to run a function in R.
    <!-- end list -->
    4.  Save file and close this tab.
    5.  Restart RStudio
    6.  In RStudio, run `Sys.getenv('R_LIBS_USER')`
    7.  Check to see that the output matches the location you entered
        before (e.g., `/Users/brandon`)

# Prereqisite 2 (Windows)

Windows users may want to read this before proceeding:
<https://rpubs.com/tomhopper/windows_nonadmin_install>

  - Windows:
    1.  Using File Explorer, create a new folder on your hard drive
        (**not the network drive**) under your users folder (e.g.,
        `C:/Users/username/R/RPackages`)
    2.  In RStudio, run `install.packages("usethis")` from the
        interactive console (bottom left)
    3.  In RStudio, run `usethis::edit_r_environ()`. A window in RStudio
        will open (called `.Renviron`)
    <!-- end list -->
      - Type `R_LIBS_USER=C:/Users/username/R/RPackages` in that new
        window (*note the direction of the slashes may be the opposite
        of what you usually use*)
      - Do not try to execute this command in R. We are creating a file
        to save on your hard drive, not trying to run a function in R.
    <!-- end list -->
    4.  Save file and close this tab.
    5.  Restart RStudio
    6.  In RStudio, run `Sys.getenv('R_LIBS_USER')`
    7.  Check to see that the output matches the location you entered
        before (e.g., `C:/Users/username/R/RPackages`)

# R Projects

In the top right corner of RStudio, note the icon and text reading,
**Project: (None)**

1.  Click this
2.  Click **New Project…**
3.  Click **Don’t Save** if prompted
4.  Choose either New Directory or Existing Directory, depending on
    whether you’ve already created a new directory for this workshop.
    The goal is to start a new project for this workshop called **R
    basics**

<!-- end list -->

  - If you haven’t created a new directory for this workshop, click
    **New Directory**
      - Then click **New Project**
      - Name your directory and decide where it goes.
  - If you have created a new directory for this workshop, click
    **Existing Directory**
      - Choose the correct directory

<!-- end list -->

5.  Check the **Open in new session** box.
6.  Click **Create Project**.

This will create a new file in your chosen directory that is specific to
this particular project. Doing this for all of your R projects will help
make your work more
manageable.

# R Rule \#1: Always program in the scripting window (top left) unless you have a good reason not to.

  - Click File -\> New File -\> R
Script

# R Rule \#2: Always annotate your syntax to leave notes for your future self and anyone else who might use your code.

The hash symbol (`#`) should be used to denote comments (R will ignore
anything to the right of a `#`)

An example of annotating syntax:

``` r
2 + 2 # R can do basic math!
5 # R will also echo back numbers to me
x <- 5 # No output was produced. 
print(x) # R saved the number 5 as an object named x. That's what the <- (left arrow) does.
x # I can print the contents of x with or without the print command
y <- 100 # R is storing the number 100 as an object named y
y # This lets me see what's stored in y
z <- x + y # Basic algebra
z # The object named z is now storing the value 105 (x + y = 5 + 100)
z - x == y # The double equals sign tells R to check whether two values are equal
a_message <- "Case matters!" # We are storing a text value inside an object called a_message
a_Message # This produced an error because the M was capitalized
a_message # This worked because I used the correct case
"Text goes in quotes, numbers don't" # R will also echo back text to me.
"I am purposefully leaving off the closing quotation marks and running this command anyway!

# Nothing happens... 
# R is waiting for me to close the quotation marks I left open (note the + symbol in the console instead of the > symbol
# and the red stop button, which tells me R is not ready for a new command yet.)
```

# Comments and other keyboard shortcuts in RStudio

  - You can automatically comment or uncomment one or more lines in R
    (for example, if you write some code that you don’t want to run
    every time) by highlighting the lines you want commented and
    pressing:
      - `command` + `shift` + `c` (Mac)
      - `Ctrl` + `Shift` + `c` (PC)
  - For more keyboard shortcuts, press
      - `option` + `shift` + `k` (Mac)
      - `Alt` + `Shift` + `k` (PC)

# Running commands from the scripting window

You have several options:

1.  To run one line at a time,

<!-- end list -->

  - Place your cursor (blinking) on that line and either…
      - press `Command` + `return` (Mac)
      - press `Ctrl` + `Enter` (PC)
      - click `Run` at the top right of the scripting window

<!-- end list -->

2.  To run multiple lines at a time

<!-- end list -->

  - Highlight the lines you want to run and either…
      - press `Command` + `return` (Mac)
      - press `Ctrl` + `Enter` (PC)
      - click `Run` at the top right of the scripting window

<!-- end list -->

3.  To run only part of a single line

<!-- end list -->

  - Highlight the lines you want to run and either…
      - press `Command` + `return` (Mac)
      - press `Ctrl` + `Enter` (PC)
      - click `Run` at the top right of the scripting window

# R Packages

  - Packages provided added functionality beyond base R and are
    essential to R’s utility.
  - The `pacman` package makes package management efficient and easy.

## Installing packages (base R)

``` r
install.packages("pacman")
```

## Loading packages (base R)

Installing a packge in R is only half the battle. The next step is to
load it into your active session.

``` r
library(pacman)
```

R does not automatically load every installed package because you may
eventually reach the point where you have hundreds of packages
installed, and you won’t need them all loaded at the same time. Only
load the ones you need to keep resource utilization manageable,
especially on computers with low RAM.

# Pacman

## Installing and loading packages (pacman)

Now that we have pacman installed, we can use it to manage our packages.
Let’s try to load the `tidyverse` package, which is actually a
collection of extremely useful packages. The `psych` package has some
great tools we may want to utilize, so let’s try to load that too.

pacman will load the `tidyverse` suite and `psych` packages if they’re
already installed, and if they’re not installed, pacman will do that for
us.

``` r
p_load(tidyverse, psych)
```

If you want to verify that these packages have been installed and
loaded, click on the **Packages** tab in the lower right quadrant of
RStudio. If a package is there, it’s installed, and if its box is
checked, it’s loaded and ready for you to use.

# Help files

While we’re in the packages pane, let’s scroll down to find the `psych`
package. It should have a check next to it indicating that it has been
loaded. If not, make sure you ran the command `p_load(tidyverse, psych)`
and that it executed without any errors.

Click on the word `psych` to open its help files.

You will see a table of contents and other information about this
package. Each of the Help Pages shown here corresponds to a single
function within that package. Take a quick look to see everything the
`psych` package offers.

  - Click on the help file for the `rescale` function, which produces
    standardized scores with a chosen distribution.
      - Note the section on **Usage**. This tells you the code you need
        to properly execute the function.
      - Each function usually takes one or more parameters as arguments.
        This function uses 4 arguments:
          - `x` - the raw scores
          - `mean` - desired mean of the rescaled scores
          - `sd` - desired standard deviation of the rescaled scores
          - `df` - if TRUE, returns a data frame, otherwise a matrix
      - Give it a try. The example below takes 10 made up scores and
        standardizes
them.

<!-- end list -->

``` r
myScores <- c(101, 130, 65, 87, 119, 102, 74, 96, 101, 88) # Put 10 made up scores into an object called myScores
rescale(x = myScores) # runs the rescale command on the data stored in the myScores object
```

*Using the help file as a guide, try converting these same 10 scores to
scaled scores (M = 10, SD = 3) instead of IQ scores.*

# Some things to note

How did that work if I didn’t enter all of the required commands into
the rescale function? I only specified the value of the `x` parameter,
not the `mean`, `sd`, or `df` parameters.

``` r
myScores <- c(101, 130, 65, 87, 119, 102, 74, 96, 101, 88)
rescale(x = myScores)
```

We did not do this 👇. Why not? What would happen if we did? Give it a
try.

``` r
rescale(101, 130, 65, 87, 119, 102, 74, 96, 101, 88)
```

What would happen if we ran this 👇? Give it a try.

``` r
rescale(c(101, 130, 65, 87, 119, 102, 74, 96, 101, 88))
```

# The c function

In R, the `c()` function is an important tool for combining multiple
data points into a single object.

For example, suppose I wanted to calculate the mean of these five
numbers:

12, 58, 481, 84, 9

To figure out how to do this, I can look at the help file for the `mean`
function.

``` r
?mean
```

This tells me that I need to enter a value for x, which represents the
numbers that I want to average.

If I didn’t use the `c()` function, my command would look like this:

``` r
mean(12, 58, 481, 84, 9)
```

    ## [1] 12

🧐

Let’s try it with `c()`

``` r
mean(c(12, 58, 481, 84, 9))
```

    ## [1] 128.8

That looks better. For many R functions, all of your data points have to
be passed as single objects. `c()` is the simplest way of concatenating
multiple data points into a single vector or list.

# More complex data structures

Most of the time, our data are more complex than 5 data points. And
those data sets are usually stored in separate files in various formats
(e.g., .csv, .sav). Let’s learn to read in some data.

<!-- To convert Rmd file to R code: -->

<!-- purl("R-basics-1.Rmd") -->
