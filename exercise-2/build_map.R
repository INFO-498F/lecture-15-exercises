### Example from plotly ###
# Original: https://plot.ly/r/choropleth-maps/

### Steps:
# 1.  Put this map into a Shiny application 
# 2.  Add a select box that allows you to select which column is on the map (i.e., beef, dairy, total.fruits, etc.)

# Tutorial on adding widgets: http://shiny.rstudio.com/tutorial/lesson3/
# Shiny widget gallery: http://shiny.rstudio.com/gallery/widget-gallery.html
# Converting a string to a variable name (this will help):
# http://www.r-bloggers.com/converting-a-string-to-a-variable-name-on-the-fly-and-vice-versa-in-r/
library(plotly)
df <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")
df$hover <- with(df, paste(state, '<br>', "Beef", beef, "Dairy", dairy, "<br>",
                           "Fruits", total.fruits, "Veggies", total.veggies,
                           "<br>", "Wheat", wheat, "Corn", corn))
# give state boundaries a white border
l <- list(color = toRGB("white"), width = 2)
# specify some map projection/options
g <- list(
  scope = 'usa',
  projection = list(type = 'albers usa'),
  showlakes = TRUE,
  lakecolor = toRGB('white')
)

plot_ly(df, z = total.exports, text = hover, locations = code, type = 'choropleth',
        locationmode = 'USA-states', color = total.exports, colors = 'Purples',
        marker = list(line = l), colorbar = list(title = "Millions USD")) %>%
  layout(title = '2011 US Agriculture Exports by State<br>(Hover for breakdown)', geo = g)