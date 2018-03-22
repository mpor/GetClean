library(dplyr)

## assuming we are into the working directory, save it and enter in the data folder
root <- getwd()
setwd("UCI HAR Dataset")

## this to simplify some code below
types <- c("test","train")

## get the columns of interest
f <- read.table("features.txt")
shortf <- f[grep("mean|std",f$V2),]
shortf <- shortf[(grep("Freq",shortf$V2,invert=TRUE)),] 

## get the activity names
a <- read.table("activity_labels.txt")

## get the -test- data
setwd(root)                               ## reset the location in the file system
setwd("UCI HAR Dataset")                  ## enter the data folder
setwd(types[1])                           ## enter the subfolder

nf1 <- paste("X_",types[1],".txt",sep="") ## build the features file name
f1 <- read.table(nf1)                     ## read the features file
f1 <- select(f1,shortf$V1)                ## select only the columns of interest
names(f1) <- shortf$V2                    ## set the column names
ns1 <- paste("subject_",types[1],".txt",sep="")   ## build the subjects file name
s1 <- read.table(ns1)                     ## read the subject file
names(s1) <- "subject"                    ## set the column name
na1 <- paste("y_",types[1],".txt",sep="") ## build the activity file name
a1 <- read.table(na1)                     ## read the activity file
a1 <- mutate(a1,V1=a$V2[V1])              ## get the descriptive activity name
names(a1) <- "activity"                   ## set the column name
d1 <- cbind(s1,a1,f1)                     ## merge the columns together: subject, activity, features

## get the -train- data
setwd(root)                               ## reset the location in the file system
setwd("UCI HAR Dataset")                  ## enter the data folder
setwd(types[2])                           ## enter the subfolder
  
nf2 <- paste("X_",types[2],".txt",sep="") ## build the features file name
f2 <- read.table(nf2)                     ## read the features file
f2 <- select(f2,shortf$V1)                ## select only the columns of interest
names(f2) <- shortf$V2                    ## set the column names
ns2 <- paste("subject_",types[2],".txt",sep="")   ## build the subjects file name
s2 <- read.table(ns2)                     ## read the subject file
names(s2) <- "subject"                    ## set the column name
na2 <- paste("y_",types[2],".txt",sep="") ## build the activity file name
a2 <- read.table(na2)                     ## read the activity file
a2 <- mutate(a2,V1=a$V2[V1])              ## get the descriptive activity name
names(a2) <- "activity"                   ## set the column name
d2 <- cbind(s2,a2,f2)                     ## merge the columns together: subject, activity, features
  
## concatenate the two data sets
d <- rbind(d1,d2)

## convert in a tibble
d <- tbl_df(d)

## group by activity and subject
d <- group_by(d,activity,subject)

## calculate the mean for each of the 66 variables
d <- summarise_at(d,1:66,mean)

## write the final data set
setwd(root)                               ## reset the location in the file system
write.table(d,"final.txt",row.names = FALSE) ## save the file

## debugging check
## e <- read.table("final.txt",header=TRUE)
## e <- tbl_df(e)
## print(e)