#load relevant data libraries for data morphing and calculating network metrics (library)
library(dplyr)
library(tidyr)
library(reshape2)
library(bipartite)

forLL_eco=NULL #eco - ecotype properties for each timebin network
forLL_morpho=NULL #morpho - morphotype properties for each timebin network
forHL_eco=NULL #eco - latitudinal properties for each timebin network
forHL_morpho=NULL #morpho - latitudinal properties for each timebin network

for (i in 1:length(roundage)){
  
  pt=as.data.frame(table(timeslabs[[i]]$round.pal.lat, timeslabs[[i]]$ecogroup))
  pt$Freq=as.numeric(pt$Freq) 
  pt2 <- as.data.frame(acast(pt, Var1~Var2, value.var="Freq"))
  
  
  nodelvl=specieslevel(pt2)
  ecot=nodelvl[[1]]
  ecot$timeslab=roundage[i]
  ecot$ecot=rownames(ecot)
  forLL_eco=rbind(forLL_eco,ecot)
  
  latitude=nodelvl[[2]]
  latitude$timeslab=roundage[i]
  latitude$pal.lat=rownames(latitude)
  forHL_eco=rbind(forHL_eco,latitude)
  print(i)
  
  pt=as.data.frame(table(timeslabs[[i]]$round.pal.lat, timeslabs[[i]]$morphogroup))
  pt$Freq=as.numeric(pt$Freq) 
  pt2 <- as.data.frame(acast(pt, Var1~Var2, value.var="Freq"))
  
  nodelvl=specieslevel(pt2)
  morphot=nodelvl[[1]]
  morphot$timeslab=roundage[i]
  morphot$morphot=rownames(morphot)
  forLL_morpho=rbind(forLL_morpho,morphot)
  
  latitude=nodelvl[[2]]
  latitude$timeslab=roundage[i]
  latitude$pal.lat=rownames(latitude)
  forHL_morpho=rbind(forHL_morpho,latitude)
  print(i)
}
