***********************************************************************************

This codebook describes the nature of raw data present in the UCI HAR Dataset, changes 
introduced during it's processing & details about the tidy data generated from it.

***********************************************************************************

Feature Selection in the Raw Data Set 
=====================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean



Changes introduced during Processing
======================================

As per the course project requirement, only variables containing mean and std were included in the data analysis(86 variables in total).

During processing, variable names were slightly modified to enhance readability (brackets, hyphens, duplicate words were removed) but no major 
changes were introduced.

Since the project goal was to calculate avg value of mean and standard deviation variables per activity per subject, so the tidy data set
contains 180 rows (30 subjects * 6 Activities) & 88 rows (86 mean,std variables & subject,activity columns)

The columns were renamed to indicate that they denote average values. It was achieved by appending "avg_" to the column names.





Tidy Data Set Variable names, Class, Range(wherever applicable) & Description
=============================================================================

Variables                            Variable Class       Variable Description      			Range

Activity_Name                        Factor               Activity Type				 6 levels : LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
Subject_No                           Integer              Subject No       			 30 levels : Ranging from 1 to 30
avg_tBodyAcc.mean.X                  Numeric              Average Value of tBodyAcc.mean.X
avg_tBodyAcc.mean.Y                  Numeric              Average Value of tBodyAcc.mean.Y
avg_tBodyAcc.mean.Z                  Numeric              Average Value of tBodyAcc.mean.Z
avg_tBodyAcc.std.X                   Numeric              Average Value of tBodyAcc.std.X
avg_tBodyAcc.std.Y                   Numeric              Average Value of tBodyAcc.std.Y
avg_tBodyAcc.std.Z                   Numeric              Average Value of tBodyAcc.std.Z
avg_tGravityAcc.mean.X               Numeric              Average Value of tGravityAcc.mean.X
avg_tGravityAcc.mean.Y               Numeric              Average Value of tGravityAcc.mean.Y
avg_tGravityAcc.mean.Z               Numeric              Average Value of tGravityAcc.mean.Z
avg_tGravityAcc.std.X                Numeric              Average Value of tGravityAcc.std.X
avg_tGravityAcc.std.Y                Numeric              Average Value of tGravityAcc.std.Y
avg_tGravityAcc.std.Z                Numeric              Average Value of tGravityAcc.std.Z
avg_tBodyAccJerk.mean.X              Numeric              Average Value of tBodyAccJerk.mean.X
avg_tBodyAccJerk.mean.Y              Numeric              Average Value of tBodyAccJerk.mean.Y
avg_tBodyAccJerk.mean.Z              Numeric              Average Value of tBodyAccJerk.mean.Z
avg_tBodyAccJerk.std.X               Numeric              Average Value of tBodyAccJerk.std.X
avg_tBodyAccJerk.std.Y               Numeric              Average Value of tBodyAccJerk.std.Y
avg_tBodyAccJerk.std.Z               Numeric              Average Value of tBodyAccJerk.std.Z
avg_tBodyGyro.mean.X                 Numeric              Average Value of tBodyGyro.mean.X
avg_tBodyGyro.mean.Y                 Numeric              Average Value of tBodyGyro.mean.Y
avg_tBodyGyro.mean.Z                 Numeric              Average Value of tBodyGyro.mean.Z
avg_tBodyGyro.std.X                  Numeric              Average Value of tBodyGyro.std.X
avg_tBodyGyro.std.Y                  Numeric              Average Value of tBodyGyro.std.Y
avg_tBodyGyro.std.Z                  Numeric              Average Value of tBodyGyro.std.Z
avg_tBodyGyroJerk.mean.X             Numeric              Average Value of tBodyGyroJerk.mean.X
avg_tBodyGyroJerk.mean.Y             Numeric              Average Value of tBodyGyroJerk.mean.Y
avg_tBodyGyroJerk.mean.Z             Numeric              Average Value of tBodyGyroJerk.mean.Z
avg_tBodyGyroJerk.std.X              Numeric              Average Value of tBodyGyroJerk.std.X
avg_tBodyGyroJerk.std.Y              Numeric              Average Value of tBodyGyroJerk.std.Y
avg_tBodyGyroJerk.std.Z              Numeric              Average Value of tBodyGyroJerk.std.Z
avg_tBodyAccMag.mean                 Numeric              Average Value of tBodyAccMag.mean
avg_tBodyAccMag.std                  Numeric              Average Value of tBodyAccMag.std
avg_tGravityAccMag.mean              Numeric              Average Value of tGravityAccMag.mean
avg_tGravityAccMag.std               Numeric              Average Value of tGravityAccMag.std
avg_tBodyAccJerkMag.mean             Numeric              Average Value of tBodyAccJerkMag.mean
avg_tBodyAccJerkMag.std              Numeric              Average Value of tBodyAccJerkMag.std
avg_tBodyGyroMag.mean                Numeric              Average Value of tBodyGyroMag.mean
avg_tBodyGyroMag.std                 Numeric              Average Value of tBodyGyroMag.std
avg_tBodyGyroJerkMag.mean            Numeric              Average Value of tBodyGyroJerkMag.mean
avg_tBodyGyroJerkMag.std             Numeric              Average Value of tBodyGyroJerkMag.std
avg_fBodyAcc.mean.X                  Numeric              Average Value of fBodyAcc.mean.X
avg_fBodyAcc.mean.Y                  Numeric              Average Value of fBodyAcc.mean.Y
avg_fBodyAcc.mean.Z                  Numeric              Average Value of fBodyAcc.mean.Z
avg_fBodyAcc.std.X                   Numeric              Average Value of fBodyAcc.std.X
avg_fBodyAcc.std.Y                   Numeric              Average Value of fBodyAcc.std.Y
avg_fBodyAcc.std.Z                   Numeric              Average Value of fBodyAcc.std.Z
avg_fBodyAcc.meanFreq.X              Numeric              Average Value of fBodyAcc.meanFreq.X
avg_fBodyAcc.meanFreq.Y              Numeric              Average Value of fBodyAcc.meanFreq.Y
avg_fBodyAcc.meanFreq.Z              Numeric              Average Value of fBodyAcc.meanFreq.Z
avg_fBodyAccJerk.mean.X              Numeric              Average Value of fBodyAccJerk.mean.X
avg_fBodyAccJerk.mean.Y              Numeric              Average Value of fBodyAccJerk.mean.Y
avg_fBodyAccJerk.mean.Z              Numeric              Average Value of fBodyAccJerk.mean.Z
avg_fBodyAccJerk.std.X               Numeric              Average Value of fBodyAccJerk.std.X
avg_fBodyAccJerk.std.Y               Numeric              Average Value of fBodyAccJerk.std.Y
avg_fBodyAccJerk.std.Z               Numeric              Average Value of fBodyAccJerk.std.Z
avg_fBodyAccJerk.meanFreq.X          Numeric              Average Value of fBodyAccJerk.meanFreq.X
avg_fBodyAccJerk.meanFreq.Y          Numeric              Average Value of fBodyAccJerk.meanFreq.Y
avg_fBodyAccJerk.meanFreq.Z          Numeric              Average Value of fBodyAccJerk.meanFreq.Z
avg_fBodyGyro.mean.X                 Numeric              Average Value of fBodyGyro.mean.X
avg_fBodyGyro.mean.Y                 Numeric              Average Value of fBodyGyro.mean.Y
avg_fBodyGyro.mean.Z                 Numeric              Average Value of fBodyGyro.mean.Z
avg_fBodyGyro.std.X                  Numeric              Average Value of fBodyGyro.std.X
avg_fBodyGyro.std.Y                  Numeric              Average Value of fBodyGyro.std.Y
avg_fBodyGyro.std.Z                  Numeric              Average Value of fBodyGyro.std.Z
avg_fBodyGyro.meanFreq.X             Numeric              Average Value of fBodyGyro.meanFreq.X
avg_fBodyGyro.meanFreq.Y             Numeric              Average Value of fBodyGyro.meanFreq.Y
avg_fBodyGyro.meanFreq.Z             Numeric              Average Value of fBodyGyro.meanFreq.Z
avg_fBodyAccMag.mean                 Numeric              Average Value of fBodyAccMag.mean
avg_fBodyAccMag.std                  Numeric              Average Value of fBodyAccMag.std
avg_fBodyAccMag.meanFreq             Numeric              Average Value of fBodyAccMag.meanFreq
avg_fBodyAccJerkMag.mean             Numeric              Average Value of fBodyAccJerkMag.mean
avg_fBodyAccJerkMag.std              Numeric              Average Value of fBodyAccJerkMag.std
avg_fBodyAccJerkMag.meanFreq         Numeric              Average Value of fBodyAccJerkMag.meanFreq
avg_fBodyGyroMag.mean                Numeric              Average Value of fBodyGyroMag.mean
avg_fBodyGyroMag.std                 Numeric              Average Value of fBodyGyroMag.std
avg_fBodyGyroMag.meanFreq            Numeric              Average Value of fBodyGyroMag.meanFreq
avg_fBodyGyroJerkMag.mean            Numeric              Average Value of fBodyGyroJerkMag.mean
avg_fBodyGyroJerkMag.std             Numeric              Average Value of fBodyGyroJerkMag.std
avg_fBodyGyroJerkMag.meanFreq        Numeric              Average Value of fBodyGyroJerkMag.meanFreq
avg_angletBodyAccMean,gravity        Numeric              Average Value of angletBodyAccMean,gravity
avg_angletBodyAccJerkMean,gravityMeanNumeric              Average Value of angletBodyAccJerkMean,gravityMean
avg_angletBodyGyroMean,gravityMean   Numeric              Average Value of angletBodyGyroMean,gravityMean
avg_angletBodyGyroJerkMean,gravityMeaNumeric              Average Value of angletBodyGyroJerkMean,gravityMean
avg_angleX,gravityMean               Numeric              Average Value of angleX,gravityMean
avg_angleY,gravityMean               Numeric              Average Value of angleY,gravityMean
avg_angleZ,gravityMean               Numeric              Average Value of angleZ,gravityMean


**********************************************************************************************************************