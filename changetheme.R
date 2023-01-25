### Author: AHz
### Date: 2023-01-24
### Written in: R version 4.2.2
### Purpose: Add the make it pretty theme and make some modifications to 
### .RProfile file to allow for some customization

################################################################################
#  INSTALL MAKE IT PRETTY  ####
################################################################################

# add make it pretty theme
rstudioapi::addTheme("makeitpretty.rstheme", 
                     apply = TRUE)

# !uncomment and run if you make changes to the makeitpretty.rstheme file!
# rstudioapi::applyTheme("Textmate (default)")
# rstudioapi::removeTheme("Make It Pretty")
#
# rstudioapi::addTheme("makeitpretty.rstheme", 
#                      apply = TRUE)

################################################################################
#  ADD ADDIIONAL THEMES  ####
################################################################################

# install the rsthemes package
remotes::install_github("gadenbuie/rsthemes")

# install themes from the rsthemes package
rsthemes::install_rsthemes(include_base16 = TRUE)

# try out all the themes from the rsthemes package (note: you can hit "f" to 
# favorite a theme -- when you get to the end of the list of themes, it will 
# return a chunk of code that you can copy and paste into your .RProfile file 
# so that your theme preferences are set across all future R sessions )
rsthemes::try_rsthemes(include_base16 = TRUE)

# to edit your .RProfile file, run this: 
usethis::edit_r_profile()

### uncomment, copy and paste this into your .RProfile file 
# 
# # ~/.Rprofile
# ! update with your favorite light/dark theme, and other favorite themes
# if (interactive()) {
#   rsthemes::set_theme_light(("Make It Pretty"))
#   rsthemes::set_theme_dark("Oceanic Plus {rsthemes}")
#   rsthemes::set_theme_favorite(
#     c( "Elm dark {rsthemes}", "Fairyfloss {rsthemes}",
#        "Material Palenight {rsthemes}", "Oceanic Plus {rsthemes}", "Make It Pretty", 
#        "Chrome")
#   )
# }
# 
# ! use this code to set auto light/dark based on time of day!! 
# 
# if (interactive() && requireNamespace("rsthemes", quietly = TRUE)) {
#   # Set preferred themes if not handled elsewhere..
#   rsthemes::set_theme_light("Make It Pretty")  # light theme
#   rsthemes::set_theme_dark("Oceanic Plus {rsthemes}") # dark theme
#   
#   # Whenever the R session restarts inside RStudio...
#   setHook("rstudio.sessionInit", function(isNewSession) {
#     # Automatically choose the correct theme based on time of day
#     rsthemes::use_theme_auto(dark_start = "16:30", dark_end = "7:00")
#   }, action = "append")
# }


################################################################################
# KEYBOARD SHORTCUTS  ####
################################################################################

# once you've added your favorite themes and your preferred light/dark theme to 
# your .RProfile file, you can amend your keyboard shortcuts to quickly switch 
# themes. Mine are as follows: 
# 
# Command + Shift + D <- Toggle between light and dark mode
# 
# Command + Shift + L <- Use RStudio default text theme 
# 
# Command + Shift + Space <- Toggle to next favorite theme  
# 
# You can modify your keyboard shortcuts by going to to Tools > Modify Keyboard
# Shortcuts and then search for "Toggle Dark Mode", "Use Default RStudio Theme", 
# and "Next Favorite Theme" 