##Load packages
library(ggplot2)

folder<-"photos"
filenames <- list.files(file.path(folder),full.names=F, pattern=".JPG") # list files
filenames

# Make list of Gosner Stage only if using full folder path
# require(stringr)
# pics <-str_sub(basename(filenames),start=1,end=-8) # G## only
# pics


# RUNNING SHINY -----------------------------------------------------------

# running shiny app: Update package first
# devtools::install_github('rstudio/shinyapps')
# library(shinyapps)
# shinyapps::deployApp('path/to/your/app')
# shinyapps::deployApp("./shiny/Humboldt_ClimateNA")
