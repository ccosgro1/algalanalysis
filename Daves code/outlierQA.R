#OUTLIER ID FOR QA CODE

#Load in the data
NDS <- read.csv(file="NDS_chla.csv")
NDS$TRT <- factor(NDS$TRT,levels=c("Control","NH4","PO4","Fe","Zn","Ni&Mo",
                                   "N&Zn","N&Fe","P&Ni&Mo","N&P"))

#Subset data
data <- NDS[NDS$SITE=="SANDUSKY 1",]

#Plot histogram of the data
with(data,plot(CHLA~TRT))

#Identify outliers
with(data,identify(TRT,CHLA,Cup))

  #Click on outliers in plot, and when complete hit ESC
  #Cup numbers will overlay on the plot
