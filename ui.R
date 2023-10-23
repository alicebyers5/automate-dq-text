
library(shiny)
library(dplyr)
library(readr)

# Read in DQ data (this could be done in setup.R)
dq <- read_csv("dq-text.csv")

shinyUI(fluidPage(

    # Application title
    titlePanel("Example app - automated data quality text"),

    selectInput("board",
                    "Select a Board",
                    choices = c("Scotland",
                                "Ayrshire & Arran",
                                "Borders",
                                "Dumfries & Galloway")
    ),
    
    uiOutput("dq_text")
    
))
