#library(png)
#library(grid)

shinyServer(function(input, output, session) {

  output$image1 <- renderImage({
    if(input$gosner < 10){
      filename <- paste("photos/gosner/0", input$gosner, "-gosner", '.jpg', sep='')
      list(src = filename,contentType = "image/jpg")
    } else {
      if(input$gosner >= 10 & input$gosner < 31){
        filename <- paste("photos/gosner/", input$gosner, "-gosner", '.jpg', sep='')
        list(src = filename,contentType = "image/jpg")
        } else {
          if(input$gosner > 30 & input$gosner < 39){
            filename <- paste("photos/gosner/31x-gosner", '.jpg', sep='')
            list(src = filename,contentType = "image/jpg")
            } else {
              if(input$gosner > 38){
                filename <- paste("photos/gosner/39x-gosner", '.jpg', sep='')
                list(src = filename,contentType = "image/jpg")
              }
            }
        }
    }
  }, deleteFile = FALSE)
    
  output$image2 <- renderImage({
    if(input$gosner < 10){
      
      filename <- paste("photos/G0", input$gosner, "_01", '.JPG', sep='')
      list(src = filename,contentType = "image/jpg")
    } else {
      filename <- paste("photos/G", input$gosner, "_01", '.JPG', sep='')
      list(src = filename,contentType = "image/jpg")
    }
  }, deleteFile = FALSE)
  

})