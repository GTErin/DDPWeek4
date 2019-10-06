library(shiny)

shinyUI(fluidPage(
  titlePanel("A Simple Replacement for Your Brain"),
  sidebarLayout(
    sidebarPanel(
      numericInput("First", "First Number", 4),
      numericInput("Second", "Second Number", 4),
      selectInput("Operation", "Operation",
                  choices = c("Add","Divide","Multiply","Subtract"))
    ),
    mainPanel(
      h3("The answer is:"),
      h3(textOutput("answer"))
    )
  )
))