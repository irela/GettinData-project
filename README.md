
# run_analysis.R


This scipt reads in UCI HAR Dataset (Human Activity Recognition Using
Smartphones Dataset) and extracts, modifies and writes out a new tidy
data set to be used for further analysis. Description of the UCI HAR
data set can be found in UCI HAR Dataset/README.txt

The script reads in subject data, test and train sets. The test and
treain sets are combined and columns related to mean and standard
deviation (std) and included in the result dataset. Columns are named
subject, activitynamed, and according to UCI HAR Dataset/features.txt
Activity names are UCI HAR Dataset/activity_labels.txt

Data is grouped by activities and subjects and column averages are
calculated for each activity.


## Usage

UCIHARDataset must be on the file system when the script is run. It
can be downloaded here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script uses following libraries:

 - dpylr
 - data.table 


To  run the script type source('run_analysis.R') in R console

## Output

Output is a tidy dataset file (resultset.txt)created in the working
directory. The dataset contains averages for each mean and standard
deviation variable for every activity and subject.

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
   
- tBodyAcc-std()-X/Y/Z
- tGravityAcc-std()-X/Y/Z
- tBodyAccJerk-std()-X/Y/Z
- tBodyGyro-std()-X/Y/Z
- tBodyGyroJerk-std()-X/Y/Z
- tBodyAccMag-std()
- tGravityAccMag-std()
- tBodyAccJerkMag-std()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-std()
- fBodyAcc-std()-X/Y/Z *
- fBodyAccJerk-std()-X/Y/Z
- fBodyGyro-std()-X/Y/Z
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-std()
- tBodyAcc-mean()-X/Y/Z
- tGravityAcc-mean()-X/Y/Z
- tBodyAccJerk-mean()-X/Y/Z
- tBodyGyro-mean()-X/Y/Z
- tBodyGyroJerk-mean()-X/Y/Z
- tBodyAccMag-mean()
- tGravityAccMag-mean()
- tBodyAccJerkMag-mean()
- tBodyGyroMag-mean()
- tBodyGyroJerkMag-mean()
- fBodyAcc-mean()-X/Y/Z
- fBodyAccJerk-mean()-X/Y/Z
- fBodyGyro-mean()-X/Y/Z
- fBodyAccMag-mean()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroJerkMag-mean() 

numeric values (range: unlimited) Average mean and standard deviation
accelerometer and gyroscope 3-axial (X, Y, Z) signals in time (t) and
frequency (f) domains. "Mag"- indicates the corresponding values for
accelerometer and gyroscope magnitue signals.