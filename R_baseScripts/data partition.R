######For 66 Million years and 1 million year bin-sizes, we make different base files to construct networks

foramdata=read.csv("data/Triton_Eco_Morpho.csv") #filename

foramdata=foramdata[-which(is.na(foramdata$ecogroup)),]
foramdata=foramdata[-which(is.na(foramdata$morphogroup)),]

roundage=unique(foramdata$round.age)

#timeslab data
timeslabs=list()
for (i in 1:length(roundage)) {
  timeslabs[[i]]=foramdata[which(foramdata$round.age==(i-1)),]
}

