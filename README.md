# GetClean

### How the script works

- assuming we are into the working directory, save it and enter in the data folder
- get the columns of interest (mean's and std's)
- get the activity names

- get the **test** data
  - enter the subfolder
 
  - read the features file
  - select only the columns of interest
  - set the column names
 
  - read the subject file
  - set the column name

  - read the activity file
  - get the descriptive activity name
  - set the column name

  - merge the columns together: subject, activity, features

- get the **train** data
  - (same as above)
  
  
- concatenate the two data sets

- group by activity and subject

- calculate the mean for each of the 66 numeric variables for each group

- write the final data set

### Code book for final.txt

final.txt is the tidy data set produced as output of run_analysis.R given the data available in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip once present in the working directory, following these steps:
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

final.txt represents a data set with 180 observations and 68 variables.
The first two variables are "activity" and "subject".

"activity" includes each of the 6 activities considered for the measurements: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

"subject" is the id of each of the 30 volunteers carrying out the experiments.
The remaining variables represent values associated to each combination of 'activity' and 'subject', hence the 6x30=180 observations.

The remaining 66 variables are the averages of the mean's and std's for each of the originally measured variables during the experiments and then processed ('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

