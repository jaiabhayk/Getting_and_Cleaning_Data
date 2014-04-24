#Getting and Cleaning Data Project

##Files

* run_analysis.R - Script to create tidy data set
* CodeBook.md - Mark down file containing he dataset description
* excluded_feature_names.txt - Text file containing the features name not included in the generated tidy dataset 

## Steps to run run_analysis.R

* Download and unzip the data set ( https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

* Open R command line prompt or R Studio. Set the current working directory in R as the data main directory of the data(i.e, directory with the name "UCI HAR Dataset")

* Download the run_analysis.R and run it using the command source("complete_path_to_run_analysis.R")

* The script will create a Tidy data set in the current working directory with the name tidy.txt.