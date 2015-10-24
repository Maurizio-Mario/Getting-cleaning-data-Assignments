NB: underscore symbols may not correctly appear in the post. http://meta.stackexchange.com/questions/26165/how-can-i-type-an-underscore-symbol-as-part-of-a-word

# The Codebook of the Programming Assignment!

Hello everybody and welcome to the Programming Assignment (PA) of the Getting and 
Cleaning Data course!

Here I present the tidy dataset required for the PA: prog_ass. Yes I know. Ass.
The prog_ass dataset is a 180*81 dataset. It reports the means by activity (six
activities) for every subject (30 subjects) of every variable extracted because
of its reference to "mean" or "standard deviation". I included also "mean 
frequencies" etcetera. Why? Two reasons. First, there is not explicit order of ignore them, hence I prefer exagerate in prudence. Cutting is easier than adding.
Second, it was easier than operate a more precise grep-cut.

Detailed description of the variables is not provided, since they are the same
of the original database. I did not change the format of the labes, since such 
a dataset aims to professionals able to get the labels. Otherwise, with a different
target of non professionals, the names should be more auto explicative.

Enjoy and thank you!

# Variables

 [1] "Group.1" : activities, levels = 1:6, labels = "walking", "walking_upstair",   "walking_downstairs", "sitting", "standing", "laying".
 [2] "Group.2" : subjects observed. Range 1:30.
 [3] "tBodyAcc-mean()-X"              
 [4] "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"              
 [6] "tBodyAcc-std()-X"               
 [7] "tBodyAcc-std()-Y"               
 [8] "tBodyAcc-std()-Z"               
 [9] "tGravityAcc-mean()-X"           
[10] "tGravityAcc-mean()-Y"           
[11] "tGravityAcc-mean()-Z"           
[12] "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"            
[14] "tGravityAcc-std()-Z"            
[15] "tBodyAccJerk-mean()-X"          
[16] "tBodyAccJerk-mean()-Y"          
[17] "tBodyAccJerk-mean()-Z"          
[18] "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"           
[20] "tBodyAccJerk-std()-Z"           
[21] "tBodyGyro-mean()-X"             
[22] "tBodyGyro-mean()-Y"             
[23] "tBodyGyro-mean()-Z"             
[24] "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"              
[26] "tBodyGyro-std()-Z"              
[27] "tBodyGyroJerk-mean()-X"         
[28] "tBodyGyroJerk-mean()-Y"         
[29] "tBodyGyroJerk-mean()-Z"         
[30] "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"          
[32] "tBodyGyroJerk-std()-Z"          
[33] "tBodyAccMag-mean()"             
[34] "tBodyAccMag-std()"              
[35] "tGravityAccMag-mean()"          
[36] "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"         
[38] "tBodyAccJerkMag-std()"          
[39] "tBodyGyroMag-mean()"            
[40] "tBodyGyroMag-std()"             
[41] "tBodyGyroJerkMag-mean()"        
[42] "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"              
[44] "fBodyAcc-mean()-Y"              
[45] "fBodyAcc-mean()-Z"              
[46] "fBodyAcc-std()-X"               
[47] "fBodyAcc-std()-Y"               
[48] "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"          
[50] "fBodyAcc-meanFreq()-Y"          
[51] "fBodyAcc-meanFreq()-Z"          
[52] "fBodyAccJerk-mean()-X"          
[53] "fBodyAccJerk-mean()-Y"          
[54] "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"           
[56] "fBodyAccJerk-std()-Y"           
[57] "fBodyAccJerk-std()-Z"           
[58] "fBodyAccJerk-meanFreq()-X"      
[59] "fBodyAccJerk-meanFreq()-Y"      
[60] "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"             
[62] "fBodyGyro-mean()-Y"             
[63] "fBodyGyro-mean()-Z"             
[64] "fBodyGyro-std()-X"              
[65] "fBodyGyro-std()-Y"              
[66] "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"         
[68] "fBodyGyro-meanFreq()-Y"         
[69] "fBodyGyro-meanFreq()-Z"         
[70] "fBodyAccMag-mean()"             
[71] "fBodyAccMag-std()"              
[72] "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"     
[74] "fBodyBodyAccJerkMag-std()"      
[75] "fBodyBodyAccJerkMag-meanFreq()" 
[76] "fBodyBodyGyroMag-mean()"        
[77] "fBodyBodyGyroMag-std()"         
[78] "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"    
[80] "fBodyBodyGyroJerkMag-std()"     
[81] "fBodyBodyGyroJerkMag-meanFreq()"


