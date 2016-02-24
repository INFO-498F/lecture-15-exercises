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
  ), 
  tabPanel('Scatter',
           titlePanel('State Exports'),
           # Create sidebar layout
           sidebarLayout(
             
             # Side panel for controls
             sidebarPanel(
               
               # Input to select variable to scatter
               selectInput("xvar", label = h3("X Variable"), 
                           choices = list("Beef" = 'beef', "Dairy" = 'dairy', "Total" = 'total.exports'), 
                           selected = 'beef'), 
               
               selectInput("yvar", label = h3("Y Variable"), 
                           choices = list("Beef" = 'beef', "Dairy" = 'dairy', "Total" = 'total.exports'), 
                           selected = 'dairy'), 
               
               textInput('search', label="Find a State", value = '')
             ),
             
             # Main panel: display plotly map
             mainPanel(
               plotlyOutput('scatter')
             )
           )
  )
))