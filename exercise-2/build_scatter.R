### Build Scatter ###
build_scatter <- function(data, xvar = 'beef', yvar = 'dairy') {
  # Filter down to state, then graph
  
  # Get x and y max
  xmax <- max(data[,eval(parse(text = 'xvar'))]) * 1.5
  ymax <- max(data[,eval(parse(text = 'yvar'))]) * 1.5
  
  data %>% 
  plot_ly(x = eval(parse(text = xvar)), 
          y = eval(parse(text = yvar)), 
          mode='markers', 
          marker = list(
            opacity = .4, 
            size = 10
          )) %>% 
  layout(xaxis = list(range = c(0, xmax), title = xvar), 
        yaxis = list(range = c(0, ymax), title = yvar)
  ) %>% 
  return()
}