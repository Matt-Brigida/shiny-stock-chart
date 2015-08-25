library(quantmod)
library(dygraphs)

shinyServer(function(input, output) {

  dataInput <- reactive({

      prices <- getSymbols(input$symb, auto.assign = FALSE)

  })

### uncomment this section to see a static OHLC chart via quantmod
##   output$plot <- renderPlot({

##       prices <- dataInput()

## chartSeries(prices)

##       })
## })


### uncomment this to see an interactive plot via dygraphs
    output$plot <- renderDygraph({

      prices <- dataInput()

        dygraph(Ad(prices)) %>%
            dyRangeSelector()
      })
})
