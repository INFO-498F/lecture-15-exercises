## Using Plotly with Shiny
In this exercise, you'll be taking an interactive Plotly map, and controlling it in a shiny application.  The `build_map.R` file already has a function that can take in a `data.frame` and a column name, and return a map of that column.  It achieves this by evaluating a string input as a column name:

```
plot_ly(df, z = eval(parse(text = column))....)
```

You'll have to do the following to get your file up and running:

### ui.R
The `ui.R` file already exists and has the skeleton code of a `fuildPage` UI.  Within that structure, you'll do the following:

- Create a `titlePanel` to display a page title
- Create `sidebarLayout` to have controls in a section to the left, and a main area for your map
- Create a `sidebarPanel` for you widgets
- Create a `selectInput` to select which variable to map
- In your `mainPanel`, display your plotly map

### server.R
- Use the `renderPlotly` function and your `build_map` function to render your map.
