# Server.r
setwd('~/Documents/INFO-498F/lecture-15-exercises/exercise-2')
# Read in data
library(plotly)
library(shiny)
library(dplyr)
source('build_map.R')
data <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")

shinyServer(function(input, output) {
  # Create a map via your build_map function
  
})