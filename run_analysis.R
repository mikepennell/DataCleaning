# Initial set up and download of dataset
  setwd("~/OneDrive/Documents/0 SourceThought Private/Data Science Course/repo/DataCleaning")
  library(dplyr)
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, destfile = "Dataset.zip", method="curl")
  unzip("Dataset.zip")

# Test use of file and readLines instead of read.table.   Deprecated
  #featureFile <- file("UCI HAR Dataset/features.txt", "r")
  #featureSet <- readLines(featureFile)
  #close(featureFile)
  #splitname <- function(x) {unlist(strsplit(x, " "))[2]}
  #fnames <- sapply(featureSet, splitname)

# Read and clean features and activity names 
  fnames <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE, 
                     col.names = c("FeatureId", "FeatureSpec"))
  fnames <- mutate(fnames, FeatureName = gsub("-","",gsub("\\(\\)","",FeatureSpec)))
  activityNames <- read.table("UCI HAR Dataset/activity_labels.txt", 
                     col.names = c("ActivityCode", "ActivityName"),
                     stringsAsFactors = FALSE)

# Read test data and combine into data frame with collumn names and select mean & std features
  testX <- read.table("UCI HAR Dataset/test/X_test.txt")
  colnames(testX) <- fnames$FeatureName
  testMeanStd <- testX[,grepl("mean\\(|std\\(",fnames$FeatureSpec)] 
  testY <- read.table("UCI HAR Dataset/test/Y_test.txt", col.names = "ActivityCode", stringsAsFactors = FALSE)
  testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "Subject")
  testAll <- bind_cols(testSubject, testY, testMeanStd)

# Read training data and combine into data frame with collumn names and select mean & std features
  trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
  colnames(trainX) <- fnames$FeatureName
  trainMeanStd <- trainX[,grepl("mean\\(|std\\(",fnames$FeatureSpec)] 
  trainY <- read.table("UCI HAR Dataset/train/Y_train.txt", col.names = "ActivityCode", stringsAsFactors = FALSE)
  trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "Subject")
  trainAll <- bind_cols(trainSubject, trainY, trainMeanStd)

# Combine test and train, group by activity and subject and write output file
  combineAll <- bind_rows(testAll, trainAll)
  combineAll$ActivityName <- activityNames$ActivityName[combineAll$ActivityCode]
  final <- select(combineAll, -(ActivityCode))
  finalGroup <- aggregate(. ~ ActivityName + Subject, data = final, FUN = mean)
  write.table(finalGroup, file = "CleanDataCourseProject.txt", row.name=FALSE)
  write.table(names(finalGroup), file="featurenames.txt", quote=FALSE)
