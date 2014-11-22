
#Codebook

Codebook for the tidy data set.

## Study design

The original data was obtained in a study and downloaded for this
project from the above mentioned webaddress. How the original data was
gathered and description of it can be found in the file UCI HAR
Dataset/README.txt

## Codebook 

The following describes each variable


subject
numeric variable between 1...30 intentifying each volunteer in the study

activityname 
character varible describing activity performed by the subject, one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
   
tBodyAcc-std()-X/Y/Z
tGravityAcc-std()-X/Y/Z
tBodyAccJerk-std()-X/Y/Z
tBodyGyro-std()-X/Y/Z
tBodyGyroJerk-std()-X/Y/Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X/Y/Z *
fBodyAccJerk-std()-X/Y/Z
fBodyGyro-std()-X/Y/Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()
tBodyAcc-mean()-X/Y/Z
tGravityAcc-mean()-X/Y/Z
tBodyAccJerk-mean()-X/Y/Z
tBodyGyro-mean()-X/Y/Z
tBodyGyroJerk-mean()-X/Y/Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X/Y/Z
fBodyAccJerk-mean()-X/Y/Z
fBodyGyro-mean()-X/Y/Z
fBodyAccMag-mean()
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean() 

numeric values (range: unlimited) Average mean and standard deviation
accelerometer and gyroscope 3-axial (X, Y, Z) signals in time (t) and
frequency (f) domains. "Mag"- indicates the corresponding values for
accelerometer and gyroscope magnitue signals.