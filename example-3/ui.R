library(shiny)
shinyUI(fluidPage(
  # Title
  titlePanel('Colorful Histogram'),
  # Declare a sidebar layout
  sidebarLayout(
    
    # Put sidebar elements in here (i.e., widgets)
    sidebarPanel( "sidebar panel", 
        # Radio buttons
        radioButtons("color", label = "Color",
                     choices = list("Green" = 'green', "Blue" = 'blue'), 
                     selected = 'green')
    ),
    
    # Put main stuff in here (i.e., plots)
    mainPanel("main panel", 
        plotOutput('histogram')
    )
  )
))