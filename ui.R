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
    br(),
    fluidRow(
      column(3,
             helpText(HTML("Select or type a Gosner Stage (<b>1-46</b>) to view a corresponding photo of Foothill yellow-legged frog (<i>R. boylii</i>) development. Not all stages currently have photos. 
                           See Github for code: (<a>https://github.com/ryan-ucd/gosner_boylii</a>)")),

             numericInput("gosner",label =  "Select a Gosner Stage",
                          value=1,step=1, min = 1, max = 46),

             helpText(em("From Gosner 1960. Herpetologica, Vol. 16, No. 3 (Sep. 23, 1960), pp. 183-190."), style = "color:blue")
      ),
      column(8, offset=1,
             imageOutput("image2", width = "auto")
      )
    ),

    fluidRow(
      column(3,
             imageOutput("image1", width="auto")
      )
    )

))
