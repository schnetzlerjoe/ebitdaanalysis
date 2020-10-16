library(plyr)

rm(five1999)
rm(five2000)
rm(five2001)
rm(five2002)
rm(five2003)
rm(five2004)
rm(five2005)
rm(five2006)
rm(five2007)
rm(five2008)
rm(five2009)
rm(five2010)
rm(five2011)
rm(five2012)
rm(five2013)
rm(all.means)

ticker <- "DG"
growth_rate <- .05

#factoring if grew larger then growth_rate for that year and ticker
Retail_Comps$fact1999 <- ifelse(Retail_Comps[, "1999"] >= growth_rate, 1, 0)
Retail_Comps$fact2000 <- ifelse(Retail_Comps[, "2000"] >= growth_rate, 1, 0)
Retail_Comps$fact2001 <- ifelse(Retail_Comps[, "2001"] >= growth_rate, 1, 0)
Retail_Comps$fact2002 <- ifelse(Retail_Comps[, "2002"] >= growth_rate, 1, 0)
Retail_Comps$fact2003 <- ifelse(Retail_Comps[, "2003"] >= growth_rate, 1, 0)
Retail_Comps$fact2004 <- ifelse(Retail_Comps[, "2004"] >= growth_rate, 1, 0)
Retail_Comps$fact2005 <- ifelse(Retail_Comps[, "2005"] >= growth_rate, 1, 0)
Retail_Comps$fact2006 <- ifelse(Retail_Comps[, "2006"] >= growth_rate, 1, 0)
Retail_Comps$fact2007 <- ifelse(Retail_Comps[, "2007"] >= growth_rate, 1, 0)
Retail_Comps$fact2008 <- ifelse(Retail_Comps[, "2008"] >= growth_rate, 1, 0)
Retail_Comps$fact2009 <- ifelse(Retail_Comps[, "2009"] >= growth_rate, 1, 0)
Retail_Comps$fact2010 <- ifelse(Retail_Comps[, "2010"] >= growth_rate, 1, 0)
Retail_Comps$fact2011 <- ifelse(Retail_Comps[, "2011"] >= growth_rate, 1, 0)
Retail_Comps$fact2012 <- ifelse(Retail_Comps[, "2012"] >= growth_rate, 1, 0)
Retail_Comps$fact2013 <- ifelse(Retail_Comps[, "2013"] >= growth_rate, 1, 0)
Retail_Comps$fact2014 <- ifelse(Retail_Comps[, "2014"] >= growth_rate, 1, 0)
Retail_Comps$fact2015 <- ifelse(Retail_Comps[, "2015"] >= growth_rate, 1, 0)
Retail_Comps$fact2016 <- ifelse(Retail_Comps[, "2016"] >= growth_rate, 1, 0)
Retail_Comps$fact2017 <- ifelse(Retail_Comps[, "2017"] >= growth_rate, 1, 0)
Retail_Comps$fact2018 <- ifelse(Retail_Comps[, "2018"] >= growth_rate, 1, 0)

#building data frame for 5 sequential years if above growth rate
if(Retail_Comps[ticker, "fact1999"] == 1) {
  five1999 <- na.omit(Retail_Comps[ticker,+2:+6])
}
if(Retail_Comps[ticker, "fact2000"] == 1) {
  five2000 <- na.omit(Retail_Comps[ticker,+3:+7])
}
if(Retail_Comps[ticker, "fact2001"] == 1) {
  five2001 <- na.omit(Retail_Comps[ticker,+4:+8])
}
if(Retail_Comps[ticker, "fact2002"] == 1) {
  five2002 <- na.omit(Retail_Comps[ticker,+5:+9])
}
if(Retail_Comps[ticker, "fact2003"] == 1) {
  five2003 <- na.omit(Retail_Comps[ticker,+6:+10])
}

if(Retail_Comps[ticker, "fact2004"] == 1) {
  five2004 <- na.omit(Retail_Comps[ticker,+7:+11])
}
if(Retail_Comps[ticker, "fact2005"] == 1) {
  five2005 <- na.omit(Retail_Comps[ticker,+8:+12])
}
if(Retail_Comps[ticker, "fact2006"] == 1) {
  five2006 <- na.omit(Retail_Comps[ticker,+9:+13])
}
if(Retail_Comps[ticker, "fact2007"] == 1) {
  five2007 <- na.omit(Retail_Comps[ticker,+10:+14])
}
if(Retail_Comps[ticker, "fact2008"] == 1) {
  five2008 <- na.omit(Retail_Comps[ticker,+11:+15])
}
if(Retail_Comps[ticker, "fact2009"] == 1) {
  five2009 <- na.omit(Retail_Comps[ticker,+12:+16])
}
if(Retail_Comps[ticker, "fact2010"] == 1) {
  five2010 <- na.omit(Retail_Comps[ticker,+13:+17])
}
if(Retail_Comps[ticker, "fact2011"] == 1) {
  five2011 <- na.omit(Retail_Comps[ticker,+14:+18])
}
if(Retail_Comps[ticker, "fact2012"] == 1) {
  five2012 <- na.omit(Retail_Comps[ticker,+15:+19])
}
if(Retail_Comps[ticker, "fact2013"] == 1) {
  five2013 <- na.omit(Retail_Comps[ticker,+16:+20])
}
all.means <- as.numeric(vector())
all.means <- append(all.means, c(
  tryNULL(rowMeans(five1999)), 
  tryNULL(rowMeans(five2000)), 
  tryNULL(rowMeans(five2001)),
  tryNULL(rowMeans(five2002)),
  tryNULL(rowMeans(five2003)),
  tryNULL(rowMeans(five2004)),
  tryNULL(rowMeans(five2005)),
  tryNULL(rowMeans(five2006)),
  tryNULL(rowMeans(five2007)),
  tryNULL(rowMeans(five2008)),
  tryNULL(rowMeans(five2009)),
  tryNULL(rowMeans(five2010)),
  tryNULL(rowMeans(five2011)),
  tryNULL(rowMeans(five2012)),
  tryNULL(rowMeans(five2013))
)
  )

mean(all.means)