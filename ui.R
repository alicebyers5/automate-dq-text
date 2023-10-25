
source("setup.R")

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
