## Creating multi-page layouts
In this exercise, you'll be a multi-page layout by leveraging a `navbarPanel` structure in Shiny.  The first tab displaying the map has already been built for you. 

You'll have to do the following to get your second tab up and running:

### ui.R
The `ui.R` file already exists and has the skeleton code of a `fuildPage` UI.  Within that structure, you'll do the following:

- Create a second `tabPanel` to show your scatter plot
- Create a `titlePanel` in this tab
- Create a `sidebarPanel` that has two `selectInput` elements controlling your x and y variables
- Create a `mainPanel` that displays your scatterplot

### server.R

- Render your scatterplot as part of your `output` element
- Pass data from your UI into your `scatter` function

### build_scatter.R
**Bonus**: change the scatter function to be able to filter down data to a text input (you'll also need to create a `textInput` element in your UI).
