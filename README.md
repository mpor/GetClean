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
