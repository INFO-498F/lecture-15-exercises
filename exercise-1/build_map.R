### Example from plotly ###
# Original: https://plot.ly/r/choropleth-maps/

# Build map function
build_map <- function(df, column) {
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
  
  plot_ly(df, z = eval(parse(text = column)), text = hover, locations = code, type = 'choropleth',
          locationmode = 'USA-states', color = eval(parse(text = column)), colors = 'Purples',
          marker = list(line = l), colorbar = list(title = "Millions USD")) %>%
    layout(title = '2011 US Agriculture Exports by State<br>(Hover for breakdown)', geo = g) %>% 
    return()
}
