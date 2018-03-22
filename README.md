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

final.txt is the tidy data set produced as output of run_analysis.R given the data available in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and present in the working directory, following these steps:
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
