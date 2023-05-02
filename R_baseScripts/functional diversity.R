#calculating Shannon diversity of species and functional groups

library(vegan)
library(reshape2)
#spewciesdiv
spediv_1M=NULL
all_bins=as.data.frame(cbind(seq(-75,90,5), 0))
colnames(all_bins)=c("lat", "del")

for (i in 1:66){
  pt=as.data.frame(table(timeslabs[[i]]$round.pal.lat, timeslabs[[i]]$species))
  pt$Freq=as.numeric(pt$Freq) 
  tblb=as.data.frame(acast(pt, Var1~Var2, value.var="Freq"))
  tblb2=cbind(rownames(tblb), tblb)
  colnames(tblb2)[1]="lat"
  tblb2$lat=as.numeric(tblb2$lat)
  tblb3=full_join(all_bins,tblb2, by="lat")
  
  pt2=tblb3[,-c(1,2)]
  
  spediv_1M=cbind(spediv_1M,apply(pt2, 1, diversity))
  
  
  print(paste("Finished Timebin ", i))
}

rownames(spediv_1M)= as.character(seq(-75,90,5))
colnames(spediv_1M)= as.character(seq(0,65))




#eco_1M
Ecodiv_1M=NULL
all_bins=as.data.frame(cbind(seq(-75,90,5), 0))
colnames(all_bins)=c("lat", "del")

for (i in 1:66){
  pt=as.data.frame(table(timeslabs[[i]]$round.pal.lat, timeslabs[[i]]$ecogroup))
  pt$Freq=as.numeric(pt$Freq) 
  tblb=as.data.frame(acast(pt, Var1~Var2, value.var="Freq"))
  tblb2=cbind(rownames(tblb), tblb)
  colnames(tblb2)[1]="lat"
  tblb2$lat=as.numeric(tblb2$lat)
  tblb3=full_join(all_bins,tblb2, by="lat")
  
  pt2=tblb3[,-c(1,2)]
  
  Ecodiv_1M=cbind(Ecodiv_1M,apply(pt2, 1, diversity))
  
  
  print(paste("Finished Timebin ", i))
}

rownames(Ecodiv_1M)= as.character(seq(-75,90,5))
colnames(Ecodiv_1M)= as.character(seq(0,65))


#morpho_1M
Morphodiv_1M=NULL
all_bins=as.data.frame(cbind(seq(-75,90,5), 0))
colnames(all_bins)=c("lat", "del")

for (i in 1:66){
  pt=as.data.frame(table(timeslabs[[i]]$round.pal.lat, timeslabs[[i]]$morphogroup))
  pt$Freq=as.numeric(pt$Freq) 
  tblb=as.data.frame(acast(pt, Var1~Var2, value.var="Freq"))
  tblb2=cbind(rownames(tblb), tblb)
  colnames(tblb2)[1]="lat"
  tblb2$lat=as.numeric(tblb2$lat)
  tblb3=full_join(all_bins,tblb2, by="lat")
  
  pt2=tblb3[,-c(1,2)]
  
  Morphodiv_1M=cbind(Morphodiv_1M,apply(pt2, 1, diversity))
  
  
  print(paste("Finished Timebin ", i))
}

rownames(Morphodiv_1M)= as.character(seq(-75,90,5))
colnames(Morphodiv_1M)= as.character(seq(0,65))
