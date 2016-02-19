shinyUI(fluidPage(
  
  # Copy the line below to make a select box 
  selectInput("export", label = h3("Choose Expot"), 
              choices = list("Beef" = 'beef', "Dairy" = 'dairy', "Total" = 'total.exports'), 
              selected = 1),
  
  hr(),
  mainPanel(
    plotlyOutput('map')
  )
  
))