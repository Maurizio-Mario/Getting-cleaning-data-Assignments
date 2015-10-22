getwd()
setwd("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/R programming")
dir()

# 1) Import subject_train. Each row identifies the subject who performed the activity for each window sample. Range 1:30

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
rm(list = "join_train_1", "X_train")
join_train_2 <- cbind(join_train_1, X_train)
memory.limit(size = 12058)
dim(join_train_2)
str(join_train_2)
head(join_train_2)
names(join_train_2)

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
join_test_2 <- cbind(subject_test, X_test, y_test)
join_test_2
dim(join_test_2)
rm(list = "X_test", "y_test")

# 12) Now i have two datasets of 2946*563(join_test_2) and of 7351*563 (join_train_2). Operate rbind to merge them.

test_train <- rbind(join_train_2, join_train_2)
dim(test_train)
str(head(test_train, 1))

# 13) Labelling activities values

summary(test_train$X5)

test_train$X5 <- factor(test_train$X5, levels = c(1:6), labels = c( "walking", "walking_upstair", "Walking_downstairs", "sitting", "standing", "laying"))

# 14) Labelling every column of test_train

var_names <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset", "features.txt"), header = FALSE)
        
var_names <- subset(var_names, select = -V1)
new_rows <- data.frame(V2 = c("subject", "activity"))
var_names <- rbind(new_rows, var_names)
as.data.frame(var_names)
test_train2 <- test_train
colnames(test_train2) <- var_names$V2 
names(test_train2)

# 15) Clean workspace

rm(list=setdiff(ls(), "test_train2"))

# 16) Extract mean and standard deviation (Step 2 of the course project)

test_train3 <- test_train2[grep("subject|activity|mean|std", colnames(test_train2), value = TRUE)]
dim(test_train3)

# 17)

sum(is.na(test_train3))
print(test_train3)
class(test_train3)
mean(test_train3[3:length(test_train3)])
tapply(test_train3,test_train3$subject, mean)
mean(test_train3$`tBodyAcc-mean()-X`)
aggregate(test_train3[, 3:81], list(test_train3$activity), mean)
q()
