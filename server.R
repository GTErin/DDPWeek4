library(shiny)

shinyServer(function(input, output) {
  
  output$answer <- renderText({

    switch(input$Operation,
           "Add" = input$First + input$Second,
           "Divide" = input$First / input$Second,
           "Multiply" = input$First * input$Second,
           "Subtract" = input$First - input$Second)
  })
})