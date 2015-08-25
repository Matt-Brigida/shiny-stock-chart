library(shiny)

shinyUI(fluidPage(
  titlePanel("Simple Stock Charting App"),
  
  sidebarLayout(
    sidebarPanel(
		        helpText("Input a ticker and see the stock's chart."),
    
        textInput("symb", label = h3("Input a Valid Stock Ticker"), value = "GE") 
                    ),

### uncomment for static chart    
      ## mainPanel(plotOutput("plot"))

### uncomment for dygraphs chart
      mainPanel(dygraphOutput("plot"))
  )
))
