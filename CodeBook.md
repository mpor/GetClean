## Code book for final.txt

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

- tBodyAcc-XYZ (variables 3,4,5 for mean and 6,7,8 fot std)
- tGravityAcc-XYZ (variables 9,10,11 for mean and 12,13,14 fot std)
- tBodyAccJerk-XYZ (variables 15,16,17 for mean and 18,19,20 fot std)
- tBodyGyro-XYZ (variables 21,22,23 for mean and 24,25,26 fot std)
- tBodyGyroJerk-XYZ (variables 27,28,29 for mean and 30,31,32 fot std)
- tBodyAccMag (variable 33 for mean and 34 fot std)
- tGravityAccMag (variable 35 for mean and 36 fot std)
- tBodyAccJerkMag (variable 37 for mean and 38 fot std)
- tBodyGyroMag (variable 39 for mean and 40 fot std)
- tBodyGyroJerkMag (variable 41 for mean and 42 fot std)
- fBodyAcc-XYZ (variables 43,44,45 for mean and 46,47,48 fot std)
- fBodyAccJerk-XYZ (variables 49,50,51 for mean and 52,53,54 fot std)
- fBodyGyro-XYZ (variables 55,56,57 for mean and 58,59,60 fot std)
- fBodyAccMag (variable 61 for mean and 62 fot std)
- fBodyAccJerkMag (variable 63 for mean and 64 fot std)
- fBodyGyroMag (variable 65 for mean and 66 fot std)
- fBodyGyroJerkMag (variable 67 for mean and 68 fot std)

