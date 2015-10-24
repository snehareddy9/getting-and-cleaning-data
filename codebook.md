##CODE BOOK
This code book describes the data, variables and any transformations that have been used to get the tidy data set. 

### Raw Data Collection
The data is obtained from UCI Machine Learning Repository

### Raw Description
* The experiment is performed on 30 subjects. 
* Each person has performed 6 activities: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
* The data captured are Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration,
Triaxial Angular velocity from the gyroscope.
* 561-feature vector with time and frequency domain variables.

###Raw Data to Tidy Data Transformation

* The transformation from Raw data to Tidy data done in run_Analysis.R file.
* Merge the training and test sets.
* Extract the data for mean and standard deviation.
* give descriptive names for subjects, activities.
* Make a tidy data which contains average of each variable, each activity and subject.

###Variables
* subject: An id for subject on whom the experiment is carried out. Range is 1-30
* activity: The activity labels are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.

###Measurements
* The measurements come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
* Body linear acceleration and angular velocity were derived in time to obtain Jerk signals(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ).
* Magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)
* Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. The following are the measurements for Mean and Standard Deviation: 

*	tBodyAccMeanX
*	tBodyAccMeanY
*	tBodyAccMeanZ
*	tBodyAccStdX
*	tBodyAccStdY
*	tBodyAccStdZ
*	tGravityAccMeanX
*	tGravityAccMeanY
*	tGravityAccMeanZ
*	tGravityAccStdX
*	tGravityAccStdY
*	tGravityAccStdZ
*	tBodyAccJerkMeanX
*	tBodyAccJerkMeanY
*	tBodyAccJerkMeanZ
*	tBodyAccJerkStdX
*	tBodyAccJerkStdY
*	tBodyAccJerkStdZ
*	tBodyGyroMeanX
*	tBodyGyroMeanY
*	tBodyGyroMeanZ
*	tBodyGyroStdX
*	tBodyGyroStdY
*	tBodyGyroStdZ
*	tBodyGyroJerkMeanX
*	tBodyGyroJerkMeanY
*	tBodyGyroJerkMeanZ
*	tBodyGyroJerkStdX
*	tBodyGyroJerkStdY
*	tBodyGyroJerkStdZ
*	tBodyAccMagMean
*	tBodyAccMagStd
*	tGravityAccMagMean
*	tGravityAccMagStd
*	tBodyAccJerkMagMean
*	tBodyAccJerkMagStd
*	tBodyGyroMagMean
*	tBodyGyroMagStd
*	tBodyGyroJerkMagMean
*	tBodyGyroJerkMagStd
*	fBodyAccMeanX
*	fBodyAccMeanY
*	fBodyAccMeanZ
*	fBodyAccStdX
*	fBodyAccStdY
*	fBodyAccStdZ
*	fBodyAccJerkMeanX
*	fBodyAccJerkMeanY
*	fBodyAccJerkMeanZ
*	fBodyAccJerkStdX
*	fBodyAccJerkStdY
*	fBodyAccJerkStdZ
*	fBodyGyroMeanX
*	fBodyGyroMeanY
*	fBodyGyroMeanZ
*	fBodyGyroStdX
*	fBodyGyroStdY
*	fBodyGyroStdZ
*	fBodyAccMagMean
*	fBodyAccMagStd
*	fBodyBodyAccJerkMagMean
*	fBodyBodyAccJerkMagStd
*	fBodyBodyGyroMagMean
*	fBodyBodyGyroMagStd
*	fBodyBodyGyroJerkMagMean
*	fBodyBodyGyroJerkMagStd
	
	
	
	
	
	
	
	
	
	
	
	
	

	
		
	
	
	
	
	
	
	
	
	
	
