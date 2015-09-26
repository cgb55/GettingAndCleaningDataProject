run_analysis <- function() {
  # This script satisfies the requirements of the project in the
  # Coursera Getting and Cleaning Data course. It:
  #   merges the training and test sets to create one data set,
  #   extracts only the measurements on the mean and standard deviation for each measurement,
  #   uses descriptive activity names to name the activities in the data set,
  #   labels the data set with descriptive variable names.
  # It then creates a second, independent tidy data set with the
  # average of each variable for each activity and each subject
  
  # load required utility library dplyr
  library("dplyr")

  # Read in the data and associated files from the base directory
  # using the original file structure of the unzipped data...
  base <- "UCI HAR Dataset"
  
  # ...test data
  x_test <- read.csv(file.path(base,"test","X_test.txt"), header=F, sep="")
  y_test <- read.csv(file.path(base,"test","Y_test.txt"), header=F, sep="")
  s_test <- read.csv(file.path(base,"test","subject_test.txt"), header=F, sep="")

  # ...training data
  x_train <- read.csv(file.path(base,"train","X_train.txt"), header=F, sep="")
  y_train <- read.csv(file.path(base,"train","Y_train.txt"), header=F, sep="")
  s_train <- read.csv(file.path(base,"train","subject_train.txt"), header=F, sep="")

  # ...labels and features
  labels <- read.csv(file.path(base,"activity_labels.txt"), header=F, sep="")
  features <- read.csv(file.path(base,"features.txt"), header=F, sep="")

  # replace the non-standard characters with underscores in feature names
  features[,2] <- make.names(features[,2])
  
  # extract two vectors, one of the feature numbers and one the feature names
  featureIds <- grep("\\.mean\\.|\\.std\\.", features[,2])
  featureNames <- features[featureIds,2]
  
  # tidy up the names by removing the periods and expanding some of the terms
  featureNames <- gsub("\\.", "", featureNames)
  featureNames <- gsub("Acc","Accelerometer", featureNames)
  featureNames <- gsub("Gyro","Gyroscope", featureNames)
  featureNames <- gsub("Mag","Magnitude", featureNames)
  featureNames <- gsub("std","StandardDeviations", featureNames)
  featureNames <- gsub("mean","Means", featureNames)
  featureNames <- gsub("X","InXDirection", featureNames)
  featureNames <- gsub("Y","InYDirection", featureNames)
  featureNames <- gsub("Z","InZDirection", featureNames)
  featureNames <- gsub("^t","MeanOfTime", featureNames)
  featureNames <- gsub("^f","MeanOfFrequency", featureNames)
  
  # combine the relevant columns of the two data sets by
  # row and add the feature names as column names
  x_all <- rbind(x_test[,featureIds], x_train[,featureIds])
  names(x_all) <- featureNames

  # combine the two sets of activity and subject numbers by row...
  y_all <- rbind(y_test, y_train)
  s_all <- rbind(s_test, s_train)
  # ... and name the two single column data sets
  names(s_all) <- "SubjectId"
  names(y_all) <- "ActivityName"

  # combine all three data sets by column
  all <- cbind(s_all, y_all, x_all)
  
  # change the activity column to factors and label the levels
  # using the names from the activity labels
  all[,2] <- as.factor(all[,2])
  levels(all[,2]) <- labels[,2]
  
  # at this point the data set 'all' represents the first
  # tidy data set required by the project, ie after step 4

  # group the data by subject and activity and find the means of these groups
  tidy <- group_by(all,SubjectId,ActivityName)
  tidy <- summarise_each(tidy, funs(mean))
  
  # at this point the data set 'tidy' represents the second
  # tidy data set required by the project, ie after step 5

  # return the tidy data set by default
}
