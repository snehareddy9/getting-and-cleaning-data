# getting-and-cleaning-data

##COURSE PROJECT

### Installation

* Download the raw data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it.
* the analysis is done in run_analysis.R file.

###Dependencies
The script run_analysis.R depends dplyr library.

### Running the analysis

* Read the training and test set data.
* merge them using cbind function.
* read the features.txt file to rename the column names of merged data set.
* extract only the columns which calculate the mean and standard deviation using grepl function.
* Give descriptive names to activities and variables.
* Make a tidy data set that calculates the average of each variable for each activity and subject. Aggregate function is used to calculate the average.
* the tidy output is written to tidy.txt file.
