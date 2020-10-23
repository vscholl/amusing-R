# beepr -------------------------------------------------------------------

# Easily play notification sounds 
# https://github.com/rasmusab/beepr

# install beepr
install.packages("beepr")
library(beepr)

# sound options available in beepr:
# 1. "ping"
# 2. "coin"
# 3."fanfare"
# 4. "complete"
# 5. "treasure"
# 6. "ready"
# 7. "shotgun"
# 8. "mario"
# 9."wilhelm"
# 10. "facebook"
# 11. "sword"

# play fanfare sound. Specify sound number or name. 
beepr::beep(3)
beepr::beep("fanfare")

# play a random sound 
beepr::beep(0)



# BRRR --------------------------------------------------------------------

# Inspired by beepr - play iconic sounds from rap artists
# https://github.com/brooke-watson/BRRR

# install BRRR
if(!require(devtools)) {install.packages("devtools")}
devtools::install_github("brooke-watson/BRRR")

library(BRRR)

# list the number and name of all available sounds
BRRR::skrrrahh_list()

# iteratively play the sounds available in the BRRR package
for(i in 1:52){
  print(BRRR::skrrrahh_list()[i])
  BRRR::skrrrahh(i)
  Sys.sleep(2)
}

# My favorites are definitely Lil Jon #36 and #37 
BRRR::skrrrahh(36)
BRRR::skrrrahh(37)
BRRR::skrrrahh(23)



# Catterplot --------------------------------------------------------------

# https://github.com/Gibbsdavidl/CatterPlots

# install Catterplot 
#install_github("Gibbsdavidl/CatterPlots")
library(CatterPlots)

x <- -10:10
y <- -x^2 + 10
# make a rainbow parabola with Nyan Cat
rainbowCats(x, y, yspread=0.05, xspread=0.05, ptsize=2, catshiftx=0.5, catshifty=-0.2, canvas=c(-0.5,1.5,-1,1.5))




# fortunes  ---------------------------------------------------------------

# https://cran.r-project.org/web/packages/fortunes/index.html

# get a fortune from the R community 

install.packages("fortunes") 
library(fortunes)
fortune()
