The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* subject
	* Subject identifier
* activity
	* Activity being performed when data was collected
* mean-tBodyAcc-mean()-X
	* Average of time domain body acceleration measurement mean in X direction 
* mean-tBodyAcc-mean()-Y
	* Average of time domain body acceleration measurement mean in Y direction
* mean-tBodyAcc-mean()-Z
	* Average of time domain body acceleration measurement mean in Z direction
* mean-tBodyAcc-std()-X
	* Average of time domain body acceleration measurement std deviation in X direction
* mean-tBodyAcc-std()-Y
	* Average of time domain body acceleration measurement std deviation in Y direction 
* mean-tBodyAcc-std()-Z
	* Average of time domain body acceleration measurement std deviation in Z direction
* mean-tGravityAcc-mean()-X
	* Average of time domain gravity acceleration measurement mean in X direction
* mean-tGravityAcc-mean()-Y
	* Average of time domain gravity acceleration measurement mean in Y direction
* mean-tGravityAcc-mean()-Z
	* Average of time domain gravity acceleration measurement mean in Z direction
* mean-tGravityAcc-std()-X
	* Average of time domain gravity acceleration measurement std deviation in X direction
* mean-tGravityAcc-std()-Y
	* Average of time domain gravity acceleration measurement std deviation in Y direction
* mean-tGravityAcc-std()-Z
	* Average of time domain gravity acceleration measurement std deviation in Z direction
* mean-tBodyAccJerk-mean()-X
	* Average of time domain derivative of body acceleration measurement mean in X direction
* mean-tBodyAccJerk-mean()-Y
	* Average of time domain derivative of body acceleration measurement mean in Y direction
* mean-tBodyAccJerk-mean()-Z
	* Average of time domain derivative of body acceleration measurement mean in Z direction
* mean-tBodyAccJerk-std()-X
	* Average of time domain derivative of body acceleration measurement std dev in X direction
* mean-tBodyAccJerk-std()-Y
	* Average of time domain derivative of body acceleration measurement std dev in Y direction
* mean-tBodyAccJerk-std()-Z
	* Average of time domain derivative of body acceleration measurement std dev in Z direction
* mean-tBodyGyro-mean()-X
	* Average of time domain body gyroscope measurement mean in X direction
* mean-tBodyGyro-mean()-Y
	* Average of time domain body gyroscope measurement mean in Y direction
* mean-tBodyGyro-mean()-Z
	* Average of time domain body gyroscope measurement mean in Z direction
* mean-tBodyGyro-std()-X
	* Average of time domain body gyroscope measurement std deviation in X direction
* mean-tBodyGyro-std()-Y
	* Average of time domain body gyroscope measurement std deviation in Y direction
* mean-tBodyGyro-std()-Z
	* Average of time domain body gyroscope measurement std deviation in Z direction
* mean-tBodyGyroJerk-mean()-X
	* Average of time domain derivative of body gyroscope measurement mean in X direction
* mean-tBodyGyroJerk-mean()-Y
	* Average of time domain derivative of body gyroscope measurement mean in Y direction
* mean-tBodyGyroJerk-mean()-Z
	* Average of time domain derivative of body gyroscope measurement mean in Z direction
* mean-tBodyGyroJerk-std()-X
	* Average of time domain derivative of body gyroscope measurement std dev in X direction
* mean-tBodyGyroJerk-std()-Y
	* Average of time domain derivative of body gyroscope measurement std dev in Y direction
* mean-tBodyGyroJerk-std()-Z
	* Average of time domain derivative of body gyroscope measurement std dev in Z direction
* mean-tBodyAccMag-mean()
	* Average of time domain magnitude of body acceleration measurement mean
* mean-tBodyAccMag-std()
	* Average of time domain magnitude of body acceleration measurement std dev
* mean-tGravityAccMag-mean()
	* Average of time domain magnitude of gravity acceleration measurement mean
* mean-tGravityAccMag-std()
	* Average of time domain magnitude of gravity acceleration measurement std dev
* mean-tBodyAccJerkMag-mean()
	* Average of time domain derivative of acceleration magnitude measurement mean
* mean-tBodyAccJerkMag-std()
	* Average of time domain derivative of acceleration magnitude measurement std dev
* mean-tBodyGyroMag-mean()
	* Average of time domain body gyroscope magnitude measurement mean
* mean-tBodyGyroMag-std()
	* Average of time domain body gyroscope magnitude measurement std dev
* mean-tBodyGyroJerkMag-mean()
	* Average of time domain derivative of body gyroscope magnitude measurement mean
* mean-tBodyGyroJerkMag-std()
	* Average of time domain derivative of body gyroscope magnitude measurement std dev
* mean-fBodyAcc-mean()-X
	* Average of frequency domain body acceleration measurement mean in X direction
* mean-fBodyAcc-mean()-Y
	* Average of frequency domain body acceleration measurement mean in Y direction
* mean-fBodyAcc-mean()-Z
	* Average of frequency domain body acceleration measurement mean in Z direction
* mean-fBodyAcc-std()-X
	* Average of frequency domain body acceleration measurement std dev in X direction
* mean-fBodyAcc-std()-Y
	* Average of frequency domain body acceleration measurement std dev in Y direction
* mean-fBodyAcc-std()-Z
	* Average of frequency domain body acceleration measurement std dev in Z direction
* mean-fBodyAccJerk-mean()-X
	* Average of frequency domain derivative of body acceleration measurement mean in X direction
* mean-fBodyAccJerk-mean()-Y
	* Average of frequency domain derivative of body acceleration measurement mean in Y direction
* mean-fBodyAccJerk-mean()-Z
	* Average of frequency domain derivative of body acceleration measurement mean in Z direction
* mean-fBodyAccJerk-std()-X
	* Average of frequency domain derivative of body acceleration measurement std dev in X direction
* mean-fBodyAccJerk-std()-Y
	* Average of frequency domain derivative of body acceleration measurement std dev in Y direction
* mean-fBodyAccJerk-std()-Z
	* Average of frequency domain derivative of body acceleration measurement std dev in Z direction
* mean-fBodyGyro-mean()-X
	* Average of frequency domain body gyroscope measurement mean in X direction
* mean-fBodyGyro-mean()-Y
	* Average of frequency domain body gyroscope measurement mean in Y direction
* mean-fBodyGyro-mean()-Z
	* Average of frequency domain body gyroscope measurement mean in Z direction
* mean-fBodyGyro-std()-X
	* Average of frequency domain body gyroscope measurement std dev in X direction
* mean-fBodyGyro-std()-Y
	* Average of frequency domain body gyroscope measurement std dev in Y direction
* mean-fBodyGyro-std()-Z
	* Average of frequency domain body gyroscope measurement std dev in Z direction
* mean-fBodyAccMag-mean()
	* Average of frequency domain body acceleration magnitude measurement mean
* mean-fBodyAccMag-std()
	* Average of frequency domain body acceleration magnitude measurement std dev
* mean-fBodyBodyAccJerkMag-mean()
	* Average of frequency domain derivative of body acceleration magnitude measurement mean
* mean-fBodyBodyAccJerkMag-std()
	* Average of frequency domain derivative of body acceleration magnitude measurement std dev
* mean-fBodyBodyGyroMag-mean()
	* Average of frequency domain body gyroscope magnitude measurement mean
* mean-fBodyBodyGyroMag-std()
	* Average of frequency domain body gyroscope magnitude measurement std dev
* mean-fBodyBodyGyroJerkMag-mean()
	* Average of frequency domain derivative of body gyroscope magnitude measurement mean
* mean-fBodyBodyGyroJerkMag-std()
	* Average of frequency domain derivative of body gyroscope magnitude measurement std dev
