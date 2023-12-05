
source("setup.R")

shinyUI(fluidPage(

    # Application title
    titlePanel("Example app - automated data quality text"),

    # Dynamic DQ text
    selectInput("board",
                "Select a Board",
                choices = c("Scotland",
                            "Ayrshire & Arran",
                            "Borders",
                            "Dumfries & Galloway")
    ),
    
    uiOutput("dq_text"),
    
    br(),
    hr(),

    # Notes page example
    map(
        unique(dq$board),
        ~ tagList(
            h2(.x),
            map(dq %>% filter(board == .x) %>% pull(text), p)
        )
    )
    
))
