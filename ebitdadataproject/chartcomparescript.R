annualmeans <- data.frame(c(fullmean(Retail_Comps$`1999`),
fullmean(Retail_Comps$`2000`),
fullmean(Retail_Comps$`2001`),
fullmean(Retail_Comps$`2002`),
fullmean(Retail_Comps$`2003`),
fullmean(Retail_Comps$`2004`),
fullmean(Retail_Comps$`2005`),
fullmean(Retail_Comps$`2006`),
fullmean(Retail_Comps$`2007`),
fullmean(Retail_Comps$`2008`),
fullmean(Retail_Comps$`2009`),
fullmean(Retail_Comps$`2010`),
fullmean(Retail_Comps$`2011`),
fullmean(Retail_Comps$`2012`),
fullmean(Retail_Comps$`2013`),
fullmean(Retail_Comps$`2014`),
fullmean(Retail_Comps$`2015`),
fullmean(Retail_Comps$`2016`),
fullmean(Retail_Comps$`2017`),
fullmean(Retail_Comps$`2018`)), row.names = 1999:2018)

barplot(annualmeans)

ggplot(annualmeans)

colnames(annualmeans) <- "Comps"




#graph for comparison to industry
ticker1 <- "DG"

year <- 1999:2018
comps <- annualmeans[, "Comps"]
tickercomps <- t(Retail_Comps[ticker1, 1:20])

df <- data.frame(year, comps, tickercomps)

ggplot(df) +
  geom_bar(aes(x = year, y = comps), stat = "identity", show.legend = TRUE) +
  geom_line(aes(x = year, y = tickercomps, color = "red")) +
  ggtitle(ticker1)





#graph for looking at correlation
library(ggplot2)
library(ggcorrplot)
retail_comps2 <- Retail_Comps[1:20, ]
corr <- cor(retail_comps2, use = "pairwise.complete.obs")
ggcorrplot(corr, 
           method = "circle",
           type = "lower",
           lab = TRUE, 
           lab_size = 3, 
           title = "Competition Correlation",
           ggtheme = theme_bw)