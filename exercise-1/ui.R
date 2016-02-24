library(shiny)
library(plotly)
shinyUI(fluidPage(
  # Create a title
  titlePanel('State Exports'),
  # Create sidebar layout
  sidebarLayout(
    
    # Side panel for controls
    sidebarPanel(
      
      # Input to select variable to map
      selectInput("export", label = h3("Choose Export"), 
              choices = list("Beef" = 'beef', "Dairy" = 'dairy', "Total" = 'total.exports'), 
              selected = 'beef')
    ),
    
    # Main panel: display plotly map
    mainPanel(
      plotlyOutput('map')
    )
  )
))