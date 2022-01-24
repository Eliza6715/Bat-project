library(ggplot2)
library(tidyverse)
library(reshape2)
library(reshape)
library(gridExtra)
library(officer)
library(knitr)



setwd("~/Desktop/Eliza R/Current Research/Batsfile")
 batsnew<-read.csv("2mergedbatsetSheet1.csv")
View(batsnew)

batsnew[,4]
batsnew[3,]


#some useful summaries
?aggregate
b<-aggregate()
f1 <- aggregate(fungal_loads~disease._state,FUN=mean,batsnew)
f1

#if you are subsetting a smaller table
tab1 <- table(data$column,data$column)