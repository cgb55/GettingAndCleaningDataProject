# Getting And Cleaning Data Project

This repository contains the script required by the Coursera Getting and Cleaning Data [1] project.
In addition the repository contains the final dataset produced by the script from the original
data and the code book for this data set.

The script `run_analysis.R` requires the package `dplyr`.

The requirement for the script is to create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set.
1. Appropriately labels the data set with descriptive variable names. 
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The first 4 of these steps are not done in strict order. Instead the extraction of the relevant measurements
is done before merging the two sets, this is done to slightly imporve the performance by reducing the size
of the data sets as early as possible.

In the second step the decision was made to only extract those measurements that contained `mean()` or `std()`
in their names. This resulted in 66 extracted measurements.

The script assumes the original data, from [2], is unzipped into the same working directory as the script.
The output from this script has been written to a file `means_of_merged_data.txt`, included in this
repository, using:
```
write.table(tidy, "means_of_merged_data.txt", row.names=F)
```
This file can be read into R using:
```
read.table("means_of_merged_data.txt", header=TRUE)
```

Please see the code book for explanations of the variables in this file and please see [3]
for more details of the project that produced the original data.

# Reference URLs

1. https://class.coursera.org/getdata-032
1. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
1. http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
