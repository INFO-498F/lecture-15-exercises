library(shiny)
library(plotly)
shinyUI(navbarPage('State Exports',
  # Create a title
  tabPanel('Map',
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
  )
  
  # Create a second `tabPanel` to show your scatter plot
  
  # Create a `titlePanel` in this tab
  
  # Create a `sidebarPanel` that has two `selectInput` elements controlling your x and y varialbes
  
  # Create a `mainPanel` that displays your scatterplot
  
))