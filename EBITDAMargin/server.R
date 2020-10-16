server <- (function(input, output) {
    
    library(shiny)
    library(readxl)
    library(DT)
    
    alllistedcompanies <- read_excel("alllistedcompanies.xlsx", sheet = "ebitdamargin")
    alllistedcompanies[1 , 5:24] <- 1999:2018
    colnames(alllistedcompanies) <- alllistedcompanies[1,]
    alllistedcompanies <- alllistedcompanies[-1 , ]
    alllistedcompanies <- as.data.frame(alllistedcompanies)
    rownames(alllistedcompanies) <- alllistedcompanies[ , 1]
    alllistedcompanies <- alllistedcompanies[, -1]
    
    output$ebitdaboxplot <- renderPlot(
        
        boxplot(subset(alllistedcompanies[,4:23], alllistedcompanies$Industry == input$industry), outline = FALSE, na.rm = TRUE
        )
        
        
        
    )
}
) 
