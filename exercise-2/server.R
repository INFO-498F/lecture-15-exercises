# Server.r
setwd('~/Documents/INFO-498F/lecture-15-exercises/exercise-2')
# Read in data
library(plotly)
library(shiny)
library(dplyr)
source('build_map.R')
source('build_scatter.R')
data <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")

shinyServer(function(input, output) {
  # Create a map via your build_map function
  output$map <- renderPlotly({ 
    build_map(data, input$export)  
  })
  
  # Render your scatterplot as part of your `output` element
  output$scatter <- renderPlotly({ 
    build_scatter(data, input$xvar, input$yvar, input$search)  
  })
})