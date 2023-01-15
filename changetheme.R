### Author: AHz
### Date: 2023-01-14
### Written in: R version 4.2.1
### Purpose: Add the make it pretty theme



# uncomment and run if you make changes to the makeitpretty.rstheme file
rstudioapi::applyTheme("Textmate (default)")
rstudioapi::removeTheme("Make It Pretty")

rstudioapi::addTheme("makeitpretty.rstheme", 
                     apply = TRUE)

