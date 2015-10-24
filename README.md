NB: underscore symbols may not correctly appear in the post. http://meta.stackexchange.com/questions/26165/how-can-i-type-an-underscore-symbol-as-part-of-a-word

# Getting-cleaning-data-CP
Course Project - Getting and cleaning data

The variables and the dataset structure are briefly described in the CodeBook.md
file in the Getting-and-Cleaning-data-Assignment repo. Thank you!

# Script steps:

## 1) Import subject_train. 
Each row identifies the subject who performed the activity for each window sample. Range 1:30 but excluded few cases, contained in subject_text.txt. Import it in the "test" merging session. 

## 2) Import X_train. 
Training set.

## 3) Import y_train.

Training labels. 

## 4) Dimensional exploration of data imported in 1), 2) and 3).


## 5) cbind 1) subject_train and 3) y_train. 
Used column binding because they are both n*1 vectors.

## 5.1) Environment cleaning. 
Removing subject_train and y_train to save memory.

## 6) Merge 

Cbind join_train_1 from 5) with X_train from 2).

## 7) Import subject_test. 

Each row identifies the subject who performed the activity for each window sample. 
It contains the subject of the interval 1:30 which are not present in subject_train.

## 8) Import X_test. 

Training set.

## 9) Import y_test. 

Training labels. 

## 10) Dimensional exploration of data in 7), 8) and 9).

## 11) Merge and environment cleaning. 

subject_test, X_test and y_test are merged in join_test_2

## 12) Step 3 of the Programming Assignment. 

Labelling activities in join_train_2$5 and join_test_2$X5

## 14) Step 4 of the Programming Assignment. 

Labeling every column of join_test_2 and join_train_2 with descriptive variable names in "feature.txt".

## 15) Clean environment

## 16) Step 1 of the Programming Assignment. 

Extracts only the measurements on the mean and standard deviation for each measurement. Now i have two tidy and pretty datasets of 2946*563(join_test_2) and of 7351*563 (join_train_2), composed by the "training" and the "test" sets. Operate rbind to merge them and order() to sort them. 

## 17) Clean work-space except for the merged dataset of 14).

## 18) Step 2 of the Assignment project. 

Extracts only the measurements on the mean and standard deviation for each measurement. 

## 19) From the data set in PAstep 4 (in this script is the dataset 
# in step 16) ), creates a second, independent tidy data set with the average of each variable for each activity and each subject. Here it is, ciao!

# 20) Ciao! 