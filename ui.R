## TO DO:
## Add a png of the GOSNER paper
## Add the specific stage next to each photo?


library(shiny)

headerPanel_2 <- function(title, h, windowTitle=title) {    
  tagList(
    tags$head(tags$title(windowTitle)),
    h(title)
  )
}

shinyUI(fluidPage(
    headerPanel_2(
      HTML(
        '<div id="stats_header">
        <a href="http://watershed.ucdavis.edu" target="_blank">
        <left>
        <img id="cws_logo" alt="CWS Logo" src="https://watershed.ucdavis.edu/files/cwsheader_0.png" />
        </left>
        </a>
        </div>'
      ), h3, NULL),
    
    titlePanel(HTML("Gosner Stages of <i> Rana boylii </i>")),
    
    fluidRow(
      column(4,
             helpText("Select a Gosner Stage to view corresponding photo of Foothill yellow-legged frog (Rana boylii) eggs or larvae."),
#              sliderInput(inputId = "gosner",width = 800,ticks = TRUE,
#                          label = "Select a Gosner Stage",
#                          min = 1, max=44,step = 1,value = 1),
             numericInput("gosner",label =  "Select a Gosner Stage", 
                          value=10,step=1, min = 1, max = 100),
             span(em("From Gosner 1960. Herpetologica, Vol. 16, No. 3 (Sep. 23, 1960), pp. 183-190."), style = "color:blue")),
      
      column(4, 
             imageOutput("image1", width="auto")
      ),
      column(8,
             imageOutput("image2", width = 400, height = 200)
             )
      )
))
