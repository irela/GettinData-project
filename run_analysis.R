#run_analysis.R

library(data.table)
library(dplyr)

#1 reading in the descriptions for activities and features
activities_names <- read.delim("UCIHARDataset/activity_labels.txt", header=FALSE, sep=" ") %>% 
  setNames( c("activityId", "activityName"))
activities_names <- tbl_dt(activities_names) %>% setkey( activityId)
features_names <- read.delim("UCIHARDataset/features.txt", header=FALSE, sep =" ")

#2 read in test and train sets 
testset <- read_test()
trainset <- read_train()

#3 merge the sets
fullset <- rbindlist(list(testset, trainset))

#4 extracts only the columns with features' std and mean (and activity and subject)
selectedset <- select(fullset, activityname, subject, contains("std()"), contains("mean()"))

#5 averages for each value, order first
ordered_fullset <- group_by(selectedset, activityname, subject)
resultset <- summarise_each(ordered_fullset, c("mean"))

#6 write out to file
write(resultset, file="resultset-project")


read_test <- function( ) {
  
  testsubjects <- read.delim("UCIHARDataset/test/subject_test.txt", header=FALSE, sep =" ")
  testactivities_ids <- read.delim("UCIHARDataset/test/y_test.txt",head=FALSE, sep=" ")

  testfea <- read.table("UCIHARDataset/test/X_test.txt", colClasses = "numeric")
  testnamed_features <- setNames(testfea, features_names[[2]])
  
  #add activity and subject columns
  testfeatures <- mutate(tbl_dt(testnamed_features), 
                         activityname = activities_names[testactivities_ids]$activityName,
                         subject = testsubjects)
  
}

read_train <- function() {
  trainsubjects <- read.delim("UCIHARDataset/train/subject_train.txt", header=FALSE, sep =" ")
  trainactivities_ids <- read.delim("UCIHARDataset/train/y_train.txt",head=FALSE, sep=" ")
  
  trainfeatures <- read.table("UCIHARDataset/train/X_train.txt", colClasses = "numeric")
  trainnamed_features <- setNames(trainfeatures, features_names[[2]])
  
  #add activity and subject columns
  trainfeatures <- mutate(tbl_dt(trainnamed_features), 
                         activityname = activities_names[trainactivities_ids]$activityName,
                         subject = trainsubjects)
  
  
}




