ui <- 
    
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
    
    fluidPage(    
    
    # Give the page a title
    titlePanel("Ebitda Margin by Industry"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
        
        # Define the sidebar with one input
        sidebarPanel(
            selectInput("industry", "Industry:", 
                        choices=unique(alllistedcompanies$Industry)),
            hr(),
            helpText("Data from Factset")
        ),
        
        # Create a spot for the boxplot
        mainPanel(
            plotOutput("ebitdaboxplot"),
            plotOutput("ebitdatable")    
        )
        
    )
)
