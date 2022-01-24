setwd("~/Desktop/Eliza R/Current Research/Batsfile")
batsnew<-read.csv("./2mergedbatsetSheet1.csv")
View(batsnew)

batsnew[,4]
batsnew[3,]


batsnew$species

batsnew[,1]
batsnew[1,]


#summary gets  you the summary of each column
summary(batsnew)




#some other useful summaries
?aggregate

agg_mean <- aggregate(fungal_loads~disease._state,FUN=mean,batsnew)
View(agg_mean)

agg_count <- aggregate(mean_cluster~disease._state,FUN=length,batsnew)
View(agg_count)

agg_sum <- aggregate(fungal_loads~disease._state,FUN=sum,batsnew)
View(agg_sum)

agg_max <- aggregate(fungal_loads~disease._state,FUN=max,batsnew)
View(agg_max)

agg_min <- aggregate(fungal_loads~disease._state,FUN=max,batsnew)
View(agg_min)

#if you are subsetting a smaller table
log_loads <- table(batsnew$species,batsnew$log_c_loads)
View(log_loads)
