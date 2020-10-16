library(shiny)

ui <- fluidPage(    
    
    # Give the page a title
    titlePanel("Ebitda Margin by Industry"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
        
        # Define the sidebar with one input
        sidebarPanel(
            selectInput("industry", "Industry:", 
                        choices=unique(alllistedcomp2$Industry)),
            hr(),
            helpText("Data from Factset")
        ),
        
        # Create a spot for the boxplot
        mainPanel(
            plotOutput("ebitdaboxplot")  
        )
        
    )
)

server <- (function(input, output) {
    
    output$ebitdaboxplot <- renderPlot(
        
        boxplot(subset(alllistedcomp2[,1:20], alllistedcomp2$Industry == input$industry), outline = FALSE, na.rm = TRUE
        )
        
    )
}
)
# Run the application 
shinyApp(ui = ui, server = server)