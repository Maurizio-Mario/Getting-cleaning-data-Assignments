getwd()

# 1) Import subject_train. Each row identifies the subject who performed the activity for each window sample. Range 1:30 but excluded few cases, contained in subject_text.txt. Import it in the "test" merging session. in cul ti e ci t'ha cagà. 

subject_train <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/train", "subject_train.txt"), header = TRUE)

# 2) Import X_train. Training set.

X_train <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/train", "X_train.txt"), header = TRUE)

# 3) Import y_train. Training labels. 

y_train <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/train", "y_train.txt"), header = TRUE)

# 4) Dimensional exploration of data imported in 1, 2 and 3.

dim(subject_train)
dim(X_train)
dim(y_train)
levels(subject_train)
levels(X_train)
levels(y_train)
names(subject_train)
names(X_train)
names(y_train)

# 5) Merge 1) subject-train and 3) y_train via column binding because they are both n*1 vectors.

join_train_1 <- cbind(subject_train, y_train)
tail(join_train_1)
dim(join_train_1)
object.size(join_train_1)

# 5.1) Remove subject_train and y_train to save memory
rm(list = "subject_train", "y_train")
gc()

# 6) Merge join_train_1 from 5) with X_train from 6).

dim(X_train)

join_train_2 <- cbind(join_train_1, X_train)
rm(list = "join_train_1", "X_train")

# 7) Import subject_test. Each row identifies the subject who performed the activity for each window sample. Range 1:30

subject_test <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/test", "subject_test.txt"), header = TRUE)
object.size(subject_test)
dim(join_train_2)

# 8) Import X_test. Training set.

X_test <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/test", "X_test.txt"), header = TRUE)
object.size(X_test)

# 9) Import y_test. Training labels. 
y_test <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/test", "y_test.txt"), header = TRUE)

# 10) Dimensional exploration 7, 8 and 9.
sapply(c(subject_test, X_test, y_test), dim)
dim(subject_test)
dim(X_test)
dim(y_test)

# 11) Cbinding subject_test, X_test, y_test plus deletion
join_test_2 <- cbind(subject_test, y_test, X_test)
join_test_2
dim(join_test_2)
rm(list = "X_test", "y_test", "subject_test")

# 12) Step 3  of the Programmin Assignment. Labelling activities in join_train_2$5 and join_test_2$X5

join_train_2$X5 <- factor(join_train_2$X5, levels = c(1:6), labels = c( "walking", "walking_upstair", "walking_downstairs", "sitting", "standing", "laying"))

join_test_2$X5 <- factor(join_test_2$X5, levels = c(1:6), labels = c( "walking", "walking_upstair", "walking_downstairs", "sitting", "standing", "laying"))

# 14) Step 4 of the Programming Assignment. Labelling every column of join_test_2 and join_train_2 with descriptive variable names.

var_names <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset", "features.txt"), header = FALSE)

var_names <- subset(var_names, select = -V1)
new_rows <- data.frame(V2 = c("subject", "activity"))
var_names <- rbind(new_rows, var_names)
as.data.frame(var_names)
colnames(join_test_2) <- var_names$V2
colnames(join_train_2) <- var_names$V2

# 15) remove var_names and new_rows

rm(list = "var_names", "new_rows")

# 16) Step 1 of the Programming Assignment. Extracts only the measurements on the mean and standard deviation for each measurement. Now i have two tidy and pretty datasets of 2946*563(join_test_2) and of 7351*563 (join_train_2), composed by the "training" and the "test" sets. Operate rbind to merge them and order() to sort them. 

test_train1 <- rbind(join_train_2, join_test_2)
test_train1 <- test_train1[order(test_train1$subject, test_train1$activity),]
dim(test_train)

# 15) Clean workspace exept for the merged dataset of 14).

rm(list=setdiff(ls(), "test_train1"))

# 16) Step 2 of the Assignment project. Extracts only the measurements on the mean and standard deviation for each measurement. 

test_train1 <- test_train1[grep("subject|activity|mean|std", colnames(test_train1), value = TRUE)]
dim(test_train1)

# 17) From the data set in step 4 (in this script is the dataset 
# in step 16) ), creates a second, independent tidy data set with the average of each variable for each activity and each subject.

prog_ass <- aggregate(test_train1[, 3:81], list(test_train1$activity, test_train1$subject), mean)

rm(test_train1)

# 18) finished! 

q()
