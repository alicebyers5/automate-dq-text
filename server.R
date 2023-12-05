
source("setup.R")


shinyServer(function(input, output) {

    dq_filtered <- reactive({
        dq %>% dplyr::filter(board == input$board)
    })
    
    output$dq_text <- renderUI({

        list(
        
            h3("Data Quality - ", input$board),    
            
            if(input$board == "Scotland") {
                p("View data quality notes for each board on the Notes tab.")
            } else {
                map(dq_filtered()$text, p)
            }
            
        )
        
    })

})
