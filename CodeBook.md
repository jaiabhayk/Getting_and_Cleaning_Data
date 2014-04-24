##DataSet Information
The data for the project is obtained from (Dated: 24th April 2014): 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Variable Description
* X, Y, Z: the axis of X, Y and Z (signals can be in the X, Y and Z directions) 
* TimeDomain or t (at the beginning of the variable names): Signals derived in Time domain 
* FrequencyDomain or f (at the beginning of the variable names): Signals derived in Frequency domain (a Fast Fourier Transform (FFT) was used to obtain frequency domain signals) 
* angle: Angle between to vectors 
* Acc: Linear acceleration signal from the accelerometer
* Gyr: Angular velocity from the gyroscope
* Body: The signals related to the body of subject (individual) who has been examined. 
* Jerk: Jerk signals (the body linear acceleration and angular velocity were derived in 
time to reach Jerk signal) 
* Mag: The magnitude of these three-dimensional signals were calculated using the Euclidean norm
* mean: Mean value 
* std: Standard deviation 
* meanFreq: Weighted average of the frequency components to obtain a mean frequency
* Gravity: The signals due to the gravity. 
* Subject: Identifies the subject who performed the activity for each sample. Its range is from 1 to 30. 
* Activity: Activities performed by each invidual wearing a smartphone (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 

Notes
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.


##Variables Not Included in Tidy Data Set
As part of the exercise for the assignment, it is required to extract only the measurements on the mean and standard deviation for each measurement. Rest of the variables are excluded from the tidy data set. Complete list of the variables excluded is available in 'excluded_feature_names.txt'.

##Variables in Tidy Data Set
 [1] "ActivityName"                          
 [2] "SubjectId"                             
 [3] "TimeDomainBodyAccMeanX"                
 [4] "TimeDomainBodyAccMeanY"                
 [5] "TimeDomainBodyAccMeanZ"                
 [6] "TimeDomainBodyAccStdX"                 
 [7] "TimeDomainBodyAccStdY"                 
 [8] "TimeDomainBodyAccStdZ"                 
 [9] "TimeDomainGravityAccMeanX"             
[10] "TimeDomainGravityAccMeanY"             
[11] "TimeDomainGravityAccMeanZ"             
[12] "TimeDomainGravityAccStdX"              
[13] "TimeDomainGravityAccStdY"              
[14] "TimeDomainGravityAccStdZ"              
[15] "TimeDomainBodyAccJerkMeanX"            
[16] "TimeDomainBodyAccJerkMeanY"            
[17] "TimeDomainBodyAccJerkMeanZ"            
[18] "TimeDomainBodyAccJerkStdX"             
[19] "TimeDomainBodyAccJerkStdY"             
[20] "TimeDomainBodyAccJerkStdZ"             
[21] "TimeDomainBodyGyroMeanX"               
[22] "TimeDomainBodyGyroMeanY"               
[23] "TimeDomainBodyGyroMeanZ"               
[24] "TimeDomainBodyGyroStdX"                
[25] "TimeDomainBodyGyroStdY"                
[26] "TimeDomainBodyGyroStdZ"                
[27] "TimeDomainBodyGyroJerkMeanX"           
[28] "TimeDomainBodyGyroJerkMeanY"           
[29] "TimeDomainBodyGyroJerkMeanZ"           
[30] "TimeDomainBodyGyroJerkStdX"            
[31] "TimeDomainBodyGyroJerkStdY"            
[32] "TimeDomainBodyGyroJerkStdZ"            
[33] "TimeDomainBodyAccMagMean"              
[34] "TimeDomainBodyAccMagStd"               
[35] "TimeDomainGravityAccMagMean"           
[36] "TimeDomainGravityAccMagStd"            
[37] "TimeDomainBodyAccJerkMagMean"          
[38] "TimeDomainBodyAccJerkMagStd"           
[39] "TimeDomainBodyGyroMagMean"             
[40] "TimeDomainBodyGyroMagStd"              
[41] "TimeDomainBodyGyroJerkMagMean"         
[42] "TimeDomainBodyGyroJerkMagStd"          
[43] "FrequencyDomainBodyAccMeanX"           
[44] "FrequencyDomainBodyAccMeanY"           
[45] "FrequencyDomainBodyAccMeanZ"           
[46] "FrequencyDomainBodyAccStdX"            
[47] "FrequencyDomainBodyAccStdY"            
[48] "FrequencyDomainBodyAccStdZ"            
[49] "FrequencyDomainBodyAccJerkMeanX"       
[50] "FrequencyDomainBodyAccJerkMeanY"       
[51] "FrequencyDomainBodyAccJerkMeanZ"       
[52] "FrequencyDomainBodyAccJerkStdX"        
[53] "FrequencyDomainBodyAccJerkStdY"        
[54] "FrequencyDomainBodyAccJerkStdZ"        
[55] "FrequencyDomainBodyGyroMeanX"          
[56] "FrequencyDomainBodyGyroMeanY"          
[57] "FrequencyDomainBodyGyroMeanZ"          
[58] "FrequencyDomainBodyGyroStdX"           
[59] "FrequencyDomainBodyGyroStdY"           
[60] "FrequencyDomainBodyGyroStdZ"           
[61] "FrequencyDomainBodyAccMagMean"         
[62] "FrequencyDomainBodyAccMagStd"          
[63] "FrequencyDomainBodyBodyAccJerkMagMean" 
[64] "FrequencyDomainBodyBodyAccJerkMagStd" 
[65] "FrequencyDomainBodyBodyGyroMagMean"    
[66] "FrequencyDomainBodyBodyGyroMagStd"     
[67] "FrequencyDomainBodyBodyGyroJerkMagMean" 
[68] "FrequencyDomainBodyBodyGyroJerkMagStd" 

##Summary of Choices and Data Set Transformation
As per the course requirement, the following transformation are done on the dataset obtained:-

* The training data set contained 7352 rows, 561 columns and test data set contained 2947 rows, 561 columns. Two separate columns for subject id and the activity id were added to both the data sets. Then the training and the test sets were merged to create one data set and only the measurements on the mean and standard deviation for each measurement were extracted. The dataset contained 10299 rows and 68 columns (including SubjectId and ActvityId) after merging the datasets. All measurements appear to be the floating point numbers in the range (-1, 1).

* Used descriptive activity names to name the activities instead of numbers in the data set and added another variable ActvityName to the dataset (For example:- LAYING, WALKING etc). The data set dimensions became 10299x69 after this.

* Appropriately labelled the data set with descriptive activity names (WALKING etc). 

* Made the variable names as per the naming convention:- For example, removed -, () etc from the variable names. Also there was some duplication in 
variable names that, fixed those by adding related axis (X, Y and Z) to the names.

* Created a second, independent tidy data set with each row representing the average of each variable for each activity and each subject. The final tidy dataset contains 180 rows and 68 columns (excluding ActivityId).



##Study Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
