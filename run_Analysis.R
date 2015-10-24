library(dplyr)
#Reading training and test sets

xtrain<- read.table("data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("data/UCI HAR Dataset/train/y_train.txt")
xtest <- read.table("data/UCI HAR Dataset/test/X_test.txt")
ytest<- read.table("data/UCI HAR Dataset/test/y_test.txt")
subtrain <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
subtest <- read.table("data/UCI HAR Dataset/test/subject_test.txt")

#Merge train and test data
trainData <- cbind(subtrain,ytrain,xtrain)
testData <- cbind(subtest,ytest,xtest)
data <- rbind(trainData,testData)
features <- read.table("data/UCI HAR Dataset/features.txt")

#Reading features data to rename the column names of merged data
features <- rbind(cbind("", c("subject", "activity")), features)
colnames(data) <- features[,2]

#extracting data for mean and standard deviation
data <- data[,grepl("subject|activity|mean\\(\\)|std",names(data))]

#giving descriptive names to activities
data$activity <- factor(data$activity, labels = c("WALKING",
"WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING", "LAYING"))               

#giving descriptive names to variables
names(data) <- gsub("^t", "time", names(data))
names(data) <- gsub("^f", "freq", names(data))
names(data) <- gsub("-mean\\(\\)", "Mean", names(data))
names(data) <- gsub("-std\\(\\)", "Stdev", names(data))
names(data) <- gsub("-", "", names(data))

#sorting the data
data<-arrange(data,subject,activity)

#tidy data set with the average of each variable for each activity and each subject
tidydata <- aggregate(data[3:68], by = list(data$subject,data$activity), mean)
tidydata <- rename(subdata,subject= Group.1, activity=Group.2)
tidydata <- arrange(subdata,subject)
tidydata <- rename(tidydata, subject=Group.1, activity=Group.2)
write.table(tidydata, "tidy.txt", row.name = FALSE, quote = FALSE)

