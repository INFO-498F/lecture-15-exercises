# Server.r
setwd('~/Documents/INFO-498F/lecture-14-exercises/exercise-2')
# Read in data
library(plotly)
library(shiny)
source('build_map.R')
data <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")

shinyServer(function(input, output) {
  
  # You can access the value of the widget with input$select, e.g.
  output$map <- renderPlotly({ 
    build_map(data, input$export)  
  })
  
})