
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shiny)
library(datasets)
data(mtcars)

mtcars$am <- as.factor(mtcars$am)
levels(mtcars$am) <- c("Automatic", "Manual")

shinyUI(fluidPage(

  # Application title
  titlePanel("Simple leniar Regression model of miles/galon against Auto/Manual transmission + a Variable selected from Mtcars Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      radioButtons(inputId="automanual", label="Auto/Manual", choices=c("Automatic","Manual")),
      selectInput(inputId="variable", label="variable", choices=colnames(mtcars)[2:length(colnames(mtcars))],
                  multiple = FALSE,selected="mpg")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      
      verbatimTextOutput("selectedVals"),
      verbatimTextOutput("summaryval"),
      verbatimTextOutput("summarymtcarval"),
      plotOutput("distPlot")
    )
  )
))
