### Use input to create a histogram    
shinyServer(function(input, output) {
  
  # Reder a histogram of a given color
  output$histogram <- renderPlot({
    x <- rnorm(1000)
    return(hist(x, col = input$color))
  })
})