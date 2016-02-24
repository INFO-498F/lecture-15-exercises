shinyUI(fluidPage(
  
  # Create a text input element
  textInput("text", label = h3("Text input"), value = "Enter text..."),
  
  # Show output$userText
  textOutput('userText')
  
))