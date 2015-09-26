# Getting And Cleaning Data Project

This repository contains the script required by the Coursera Getting and Cleaning Data [1] project.
In addition the repository contains the final dataset produced by the script from the original
data and the code book for this data set.

The script `run_analysis.R` requires the package `dplyr`.

It assumes the original data, from [2], is unzipped into the same working directory as the script.
The script writes out two files into the working directory. `merged_data.txt` represents the first
tidy data set, `means_of_merged_data.txt` represents the second data set required and is the file
included here. Both files can be read into R using `read.table()`.

Please see the code book for explanations of the variables in each of these files and please see [3]
for more details of the project that produced the original data.

1. https://class.coursera.org/getdata-032
1. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
1. http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
