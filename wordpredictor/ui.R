#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    theme = shinytheme("cosmo"),
    tags$hr(),
    # Application title
    titlePanel("Next word predictor"),
    tags$h4("Alessandro Galletto - 13th January, 2020"),
    tags$hr(),
    mainPanel(
        tags$p(""),
        tags$h3("Please, enter your text:"),
        h4(tags$textarea(id = "txt_in", rows = 1, cols = 80, "")),
        actionButton("button_clear",
                     label = "Clear",
                     icon = icon("refresh")),
        tags$p(""),
        tags$h3("Predicted next word:"),
        textOutput("txt_out_id1"),
        textOutput("txt_out_id2"),
        textOutput("txt_out_id3")
        )
    )
)
