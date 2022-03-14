output: md\_document: variant: markdown\_github

R-basics-1
========================================================
author: Brandon Gavett
date: 14/3/2022
autosize: true


Why use R?
========================================================

- It has become the state of the art for statistical analysis in psychology and beyond
- It is free and open source
- It is a programming language - it can perform almost any statistical procedure
  - And if a certain function doesn't exist, you can write your own!
- It facilitates reproducible research (if used properly)
  - It can provide a step-by-step record of every analytic procedure you perform
- It has excellent graphics capabilities
- It can generate publication-quality output (e.g., presentations, manuscripts)

R Style
========================================================
When using any programming language, making your syntax understandable to yourself and others is essential. There are several resources available to help you write good code.

- Tidyverse style guide: https://style.tidyverse.org/
- Google style guide: https://google.github.io/styleguide/Rguide.html
- *styler* package: https://styler.r-lib.org/
- *lintr* package: https://github.com/r-lib/lintr

Really quick introduction to R and RStudio
========================================================
No need to run R itself - use RStudio (requires R to be installed) 

- Top left: scripting window
  - 90% of the work happens here
- Bottom left: Console (+ Terminal & Jobs)
  - The interactive part of R
- Top right: Environment & History
  - What's in memory for the current session
- Bottom right: Files, Plots, Packages, and Help.
  - Helpful tools and visuals
  
Prereqisites
========================================================
Make sure your software is up to date.

- R [https://cran.r-project.org/](https://cran.r-project.org/)
- RStudio [https://www.rstudio.com/products/rstudio/download/](https://www.rstudio.com/products/rstudio/download/)

Prereqisites
========================================================
Make sure you are able to install packages.

Run the following command in the RStudio console:

```{r firstPackages, eval = FALSE}
install.packages("car")
```

If this does not work, and you have an active internet connection, then you probably don't have appropriate permissions on your computer. If using a Uni computer, you will need to have IT assist you.

The extreme basics of R syntax
========================================================
`object <- value`

- The arrow assignment operator (`<-`) tells R to store what's on the right of the arrow in the object named on the left side of the arrow.
  - The object on the left can be given almost any name you choose, with several exceptions:
    + It can't start with a number (e.g., `1stObject` won't work - use `firstObject` instead)
    + It can't contain spaces (e.g., `first object` won't work - use `first_object` instead)
    + It can't contain special characters other than an underscore or a period.
    + You should avoid giving it a name that is already used by R (although this is technically allowed, it is not best practice)
        + e.g., `mean` is a function in R that is used to calculate the mean.
            - Therefore, you should avoid creating an object called `mean`.
  - The part on the right can be pretty much anything numeric (not quoted unless you don't want it to be treated as a number) or text (all text must be surrounded by single or double quotation marks) or more complex things that we will eventually cover.

R Objects
========================================================
Once an object is created, it can be viewed or manipulated.

+ To see the contents of an object, just call the object's name, or, to be more explicit, ask for its contents to be printed.
    - `> object`
    - `> print(object)`
+ An example of manipulating an object would be to perform some mathematical operation on the object.
    - `> object + 1` (adds 1 to each element stored in `object`)
    - `> sqrt(object)` (takes the square root of each element in `object`)
    - `> object^2` (squares the value of each element in `object`)

The syntax `print(object)` and `sqrt(object)` both illustrate another feature of R: functions. We'll cover these more later.

+ `print` and `sqrt` are the functions, and `object` is what is passed to the function. 

Interactive console (bottom left)
========================================================
Try these 12 basic exercises. Type the following commands next to the `>` in your console and then press Enter/Return. Make note of what happens.

```{r ex12, eval = FALSE}
2 + 2
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
```

Using the RStudio GUI
========================================================
Some of the things to look out for when using the RStudio GUI:

- Colour-coding (defaults)
  - Black = R-specific things (e.g., functions)
  - Blue = numbers, logical (TRUE/FALSE)
  - Green = text (strings)

- Red X next to the line number:
  - R detected an error in your syntax (hover your cursor over the red X to see why)
  - Red squiggle under your code shows R's attempt to guess the source of the error

- Red squiggles under your code could also indicate a spelling error 
  - If a character vector (text) or in commented syntax
  
- A plus sign (`+`) in your console instead of the usual `>`
  - This means you ran a partial command, but did not provide all of the required syntax
    - Usually, you either forgot to close your parentheses/brackets 
      - e.g., `x <- sqrt(y`
    - Or you forgot to close your quotation marks
      - e.g., `bestAnimal <- "dog`

Let's see if you can make all of these things appear in your Source code (and then fix them!) 
 
R Projects
========================================================
In the top right corner of RStudio, note the icon and text reading, **Project: (None)**

1. Click that icon.
2. Click **New Project...**
3. Click **Don't Save** if prompted
4. Choose either New Directory or Existing Directory, depending on whether you've already created a new directory for this workshop. The goal is to start a new project for this workshop called **R basics** (or give it whatever name you prefer)
    + If you haven't created a new directory for this workshop, click **New Directory** 
        - Then click **New Project**
        - Name your directory and decide where it goes.
    + If you *have* created a new directory for this workshop, click **Existing Directory**
        - Choose the correct directory
5. Check the **Open in new session** box.
6. Click **Create Project**.
          
This will create a new file in your chosen directory that is specific to this particular project. Doing this for all of your R projects will help make your work more manageable.

R Rule #1: Always program in the scripting window (top left) unless you have a good reason not to.
========================================================
- Click File -> New File -> R Script

R Rule #2: Always annotate your syntax to leave notes for your future self and anyone else who might use your code.
========================================================
The hash symbol (`#`) should be used to denote comments (R will ignore anything to the right of a `#`)

An example of annotating syntax:

```{r annotationExample, echo = TRUE, eval = FALSE}
2 + 2 # R can do basic math!
x <- 5 # No output was produced. 
print(x) # R saved the number 5 as an object named x. That's what the <- (left arrow) does.
x # I can print the contents of x with or without the print command
y <- 100 # R is storing the number 100 as an object named y
y # This lets me see what's stored in y
z <- x + y # Basic addition
z # The object named z is now storing the value 105 (x + y = 5 + 100)
z - x == y # The double equals sign tells R to check whether two values are equal
a_message <- "Case matters!" # We are storing a text value inside an object called a_message
a_Message # This produced an error because the M was capitalized
a_message # This worked because I used the correct case
```

Comments and other keyboard shortcuts in RStudio
========================================================
+ You can automatically comment or uncomment one or more lines in R (for example, if you write some code that you don't want to run every time) by highlighting the lines you want commented and pressing:
  - `command` + `shift` + `c` (Mac)
  - `Ctrl` + `Shift` + `c` (PC)
+ For more keyboard shortcuts, press 
  - `option` + `shift` + `k` (Mac)
  - `Alt` + `Shift` + `k` (PC)

Running commands from the Source code
========================================================
You have several options:

1. To run one line at a time, 
    - Place your cursor (blinking) on that line and either...
      - press `Command` + `return` (Mac)
      - press `Ctrl` + `Enter` (PC)
      - click `Run` at the top right of the scripting window
2. To run multiple lines at a time
    - Highlight the lines you want to run and either...
      - press `Command` + `return` (Mac)
      - press `Ctrl` + `Enter` (PC)
      - click `Run` at the top right of the scripting window
3. To run only part of a single line
    - Highlight the text you want to run and either...
      - press `Command` + `return` (Mac)
      - press `Ctrl` + `Enter` (PC)
      - click `Run` at the top right of the scripting window
        
R Packages
========================================================
+ Packages provided added functionality beyond base R and are essential to R's utility.
+ The `pacman` package makes package management efficient and easy.

Installing packages (base R)
========================================================
```{r ip, eval = FALSE}
install.packages("pacman")
```

Loading packages (base R)
========================================================
Installing a package in R is only half the battle. The next step is to load it into your active session.

```{r lp}
library(pacman)
```

R does not automatically load every installed package because you may eventually reach the point where you have hundreds of packages installed, and you won't need them all loaded at the same time. Only load the ones you need to keep resource utilization manageable, especially on computers with low RAM.

Pacman
========================================================
## Installing and loading packages (pacman)

Now that we have pacman installed, we can use it to manage our packages. Let's try to load the `tidyverse` package, which is actually a collection of extremely useful packages. The `psych` package has some great tools we may want to utilize, so let's try to load that too.

pacman will load the `tidyverse` suite and `psych` packages if they're already installed, and if they're not installed, pacman will do that for us.

```{r otherPackages}
p_load(tidyverse, psych)
```

If you want to verify that these packages have been installed and loaded, click on the **Packages** tab in the lower right quadrant of RStudio. If a package is there, it's installed, and if its box is checked, it's loaded and ready for you to use. 

Help files
========================================================
While we're in the packages pane, let's scroll down to find the `psych` package. It should have a check next to it indicating that it has been loaded. If not, make sure you ran the command `p_load(tidyverse, psych)` and that it executed without any errors.

Click on the word `psych` to open its help files.

You will see a table of contents and other information about this package. Each of the Help Pages shown here corresponds to a single function within that package. Take a quick look to see everything the `psych` package offers.

+ Click on the help file for the `rescale` function, which produces standardized scores with a chosen distribution.
  - Note the section on **Usage**. This tells you the code you need to properly execute the function.
  - Each function usually takes one or more parameters as arguments. This function uses 4 arguments:
    - `x` - the raw scores
    - `mean` - desired mean of the rescaled scores
    - `sd` - desired standard deviation of the rescaled scores
    - `df` - if TRUE, returns a data frame, otherwise a matrix
  - Give it a try. The example below takes 10 made up scores and standardizes them.
    
```{r rescale, eval = FALSE}
myScores <- c(101, 130, 65, 87, 119, 102, 74, 96, 101, 88) # Put 10 made up scores into an object called myScores
rescale(x = myScores) # runs the rescale command on the data stored in the myScores object
```

*Using the help file as a guide, try converting these same 10 scores to scaled scores (M = 10, SD = 3) instead of IQ scores.*


Wrapping up
========================================================
Next week, we'll go into more detail about how to use R syntax to work with your data and we'll learn to perform some basic statistical analyses.

Anything else you'd like to see covered? Shoot me an email.

brandon.gavett@uwa.edu.au

Files from this workshop will be posted to GitHub: https://github.com/begavett/Rbasics

The video recording of this workshop will be available on Teams.

