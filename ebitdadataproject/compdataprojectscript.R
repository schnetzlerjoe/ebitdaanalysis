library(readxl)
Retail_Sales <- read_excel("C:/Users/jschnetzler19/Downloads/Retail Sales.xlsx",
                           sheet = "Sheet1", range = "A1:V29")
View(Retail_Sales)
Retail_Comps <- Retail_Sales
Retail_Sales2 <- Retail_Sales[-1,]
colnames(Retail_Sales2) <- Retail_Sales[, 1]
View(Retail_Sales2)
View(Retail_Sales)
rm(Retail_Sales2)
install.packages("tidyverse")
library(tidyverse)
Retail_Comps %>% remove_rownames %>% column_to_rownames(var="names")
View(Retail_Comps)
Retail_Comps %>% remove_rownames %>% column_to_rownames(var="names")
Retail_Comps %>% remove_rownames %>% column_to_rownames(var="Same Store Sales")
View(Retail_Comps)
Retail_Comps <- Retail_Comps %>% remove_rownames %>% column_to_rownames(var="Same Store Sales")
View(Retail_Comps)
colnames(Retail_Comps)
colnames(Retail_Comps) <- Retail_Comps["Ticker",]
View(Retail_Comps)
Retail_Comps["Ticker",] <- NULL
Retail_Comps[-1,]
Retail_Comps <- Retail_Comps[-1,]
View(Retail_Comps)
View(Retail_Sales)
rm(Retail_Sales)
View(Retail_Comps)
View(Retail_Comps)
View(Retail_Comps)
ticker_to_name <- Retail_Comps[,1:2]
View(ticker_to_name)
ticker_to_name <- Retail_Comps[,1]
ticker_to_name <- Retail_Comps[,1:2]
ticker_to_name[, 2] <- NULL
View(ticker_to_name)
View(ticker_to_name)
View(Retail_Comps)
Retail_Comps[, 1] <- NULL

#create function for multi if statement



ticker <- "LOW"
growth_rate <- .03

  if(Retail_Comps[ticker, "1999"] >= growth_rate) {
    multiif1999 <- as.data.frame(Retail_Comps[ticker, "1999"], row.names = ticker)
  
    colnames(multiif1999) <- "1999"
}
  if(Retail_Comps[ticker, "2000"] >= growth_rate) {
    multiif2000 <- as.data.frame(Retail_Comps[ticker, "2000"], row.names = ticker)
    
    colnames(multiif2000) <- "2000"
  }
  if(Retail_Comps[ticker, "2001"] >= growth_rate) {
    multiif2001 <- as.data.frame(Retail_Comps[ticker, "2001"], row.names = ticker)
    
    colnames(multiif2001) <- "2001"
  }
  if(Retail_Comps[ticker, "2002"] >= growth_rate) {
    multiif2002 <- as.data.frame(Retail_Comps[ticker, "2002"], row.names = ticker)
    
    colnames(multiif2002) <- "2002"
  }
  if(Retail_Comps[ticker, "2003"] >= growth_rate) {
  multiif2003 <- as.data.frame(Retail_Comps[ticker, "2003"], row.names = ticker)
  
  colnames(multiif2003) <- "2003"
  }

  if(Retail_Comps[ticker, "2004"] >= growth_rate) {
  multiif2004<- as.data.frame(Retail_Comps[ticker, "2004"], row.names = ticker)
  
  colnames(multiif2004) <- "2004"
  }

  if(Retail_Comps[ticker, "2005"] >= growth_rate) {
  multiif2005 <- as.data.frame(Retail_Comps[ticker, "2005"], row.names = ticker)
  
  colnames(multiif2005) <- "2005"
  }

  if(Retail_Comps[ticker, "2006"] >= growth_rate) {
  multiif2006 <- as.data.frame(Retail_Comps[ticker, "2006"], row.names = ticker)
  
  colnames(multiif2006) <- "2006"
  }
  if(Retail_Comps[ticker, "2007"] >= growth_rate) {
  multiif2007 <- as.data.frame(Retail_Comps[ticker, "2007"], row.names = ticker)
  
  colnames(multiif2007) <- "2007"
  }
  if(Retail_Comps[ticker, "2008"] >= growth_rate) {
  multiif2008 <- as.data.frame(Retail_Comps[ticker, "2008"], row.names = ticker)
  
  colnames(multiif2008) <- "2008"
  }
  if(Retail_Comps[ticker, "2009"] >= growth_rate) {
  multiif2009 <- as.data.frame(Retail_Comps[ticker, "2009"], row.names = ticker)
  
  colnames(multiif2009) <- "2009"
  }
  if(Retail_Comps[ticker, "2010"] >= growth_rate) {
  multiif2010 <- as.data.frame(Retail_Comps[ticker, "2010"], row.names = ticker)
  
  colnames(multiif2010) <- "2010"
  }
  if(Retail_Comps[ticker, "2011"] >= growth_rate) {
  multiif2011 <- as.data.frame(Retail_Comps[ticker, "2011"], row.names = ticker)
  
  colnames(multiif2011) <- "2011"
  }
  if(Retail_Comps[ticker, "2012"] >= growth_rate) {
  multiif2012 <- as.data.frame(Retail_Comps[ticker, "2012"], row.names = ticker)
  
  colnames(multiif2012) <- "2012"
  }
  if(Retail_Comps[ticker, "2013"] >= growth_rate) {
  multiif2013 <- as.data.frame(Retail_Comps[ticker, "2013"], row.names = ticker)

  colnames(multiif2013) <- "2013"
  }
  if(Retail_Comps[ticker, "2014"] >= growth_rate) {
  multiif2014 <- as.data.frame(Retail_Comps[ticker, "2014"], row.names = ticker)
  
  colnames(multiif2014) <- "2014"
  }
  if(Retail_Comps[ticker, "2015"] >= growth_rate) {
  multiif2015 <- as.data.frame(Retail_Comps[ticker, "2015"], row.names = ticker)
  
  colnames(multiif2015) <- "2015"
  }
  if(Retail_Comps[ticker, "2016"] >= growth_rate) {
  multiif2016 <- as.data.frame(Retail_Comps[ticker, "2016"], row.names = ticker)
  
  colnames(multiif2016) <- "2016"
  }
  if(Retail_Comps[ticker, "2017"] >= growth_rate) {
  multiif2017 <- as.data.frame(Retail_Comps[ticker, "2017"], row.names = ticker)
  
  colnames(multiif2017) <- "2017"
  }
  if(Retail_Comps[ticker, "2018"] >= growth_rate) {
  multiif2018 <- as.data.frame(Retail_Comps[ticker, "2018"], row.names = ticker)
  
  colnames(multiif2018) <- "2018"
  }

bigif <- as.data.frame(do.call("rbind", list(c(if(exists("multiif1999")) multiif1999, if(exists("multiif2000")) multiif2000, if(exists("multiif2001")) 
  multiif2001, if(exists("multiif2002")) multiif2002, if(exists("multiif2003")) multiif2003, if(exists("multiif2004")) 
    multiif2004, if(exists("multiif2005")) multiif2005, if(exists("multiif2006")) multiif2006, if(exists("multiif2007")) 
      multiif2007, if(exists("multiif2008")) multiif2008, if(exists("multiif2009")) multiif2009, if(exists("multiif2010")) 
        multiif2010, if(exists("multiif2011")) multiif2011, if(exists("multiif2012")) multiif2012, if(exists("multiif2013")) 
          multiif2013, if(exists("multiif2014")) multiif2014, if(exists("multiif2015")) multiif2015, if(exists("multiif2016")) 
            multiif2016, if(exists("multiif2017")) multiif2017, if(exists("multiif2018")) multiif2018))))

row.names(bigif) <- ticker