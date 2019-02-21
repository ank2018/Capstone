#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)
library(tm)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Data Science - Capstone Final Project.An application that predicts the next word using natural language processing"),
  
  
  # Sidebar with a input for word/words 
  sidebarLayout(
    sidebarPanel(
      textInput("inputText", "Enter the input word/words",value = ""),
      hr(),
      helpText("After you enter the sentence above the next word will be predicted and displayed"),
      hr()
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h2("Predicted next word is as follows"),
      verbatimTextOutput("wordprediction")
      
    )
  )
))
