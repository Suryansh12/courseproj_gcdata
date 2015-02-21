# courseproj_gcdata


#Summary and assumptions
========================

Run.analysis.R script is used to summarize the mean and standard deviation(std) measurements per subject per activity by using the dataset
provided in the UCI HAR Dataset directory.

This script starts with the assumption that the Samsung data is available in an unzipped UCI HAR Dataset folder within the working directory.

Also, the "reshape2" package should be pre-installed in the library before running this script.


#UCI HAR Dataset Directory contains the following files
=======================================================

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity names.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 



#Script Step 1.1, 1.2, 1.3
==========================
Script reads subject_test, X_test, Y_test, subject_train, X_train, Y_train txt files into R and then uses it to form test and training data sets.
Test & Training data sets contains 2947 & 7352 observations respectively. Then it merges the datasets using rbind to form a dataset named "data".

Note : - The inertia datasets are not used directly in the script to produce the tidy data. However, they were used previously to produce the X,Y datasets.


#Script Step 2
==============
Scirpt reads Features.txt into R which contains variable names for the data present in the X files. Then it uses it to assign column names to "data".
Using Grep function, it identifies the "mean" and "std" observations and then subset the data(data_subset).



#Script Step 3
==============
It reads the file named activity_labels which contains activity names corresponding to their activity no.s (i.e. 1 WALKING
  2 WALKING_UPSTAIRS 
 
3 WALKING_DOWNSTAIRS  
4 SITTING
  5 STANDING
  6 LAYING
). This information is merged with the dataset named "data_subset" to form "mergedData".



#Script Step 4
==============
Then it describes a function cleanupcolnames() which is used to modify variable names to make them more descriptive. It removes "()", "-" characters
and duplication of "body" string.



#Script Step 5.1, 5.2, 5.3
==========================
It melts the "mergedData" dataset keeping "Activity_Name" & "Subject_No" as ids and all the "mean" and "std" measurements as variables.
Then it recast the data to form a new data set with 180 rows (6 activities* 30 subjects) & 88 columns (activity_name,subject_no & 86 Avg(Mean & Std Measurements)

Since the columns contain average values(per activity per subject), so the columns are renamed to indicate the average values.

The final dataset is written into a text file "tidydata.txt" in the working directory as per the project instructions.
Use this command to read it back into R from the working directory => read.table("~/tidydata.txt",header=TRUE)


====================================================================================================================













