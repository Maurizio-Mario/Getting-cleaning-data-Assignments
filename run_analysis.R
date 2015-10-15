rm(list = ls())
setwd("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/R programming")
dir()

# 1) Import subject_train. Each row identifies the subject who performed the activity for each window sample. Range 1:30

subject_train <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/train", "subject_train.txt"), header = TRUE)
object.size(subject_train)

# 2) Import X_train. Training set.

X_train <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/train", "X_train.txt"), header = TRUE)
object.size(X_train)
?object.size
# 3) Import y_train. Training labels. 

y_train <- read.table(file = file.path("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/Getting-cleaning-data-Assignments/UCI HAR Dataset/train", "y_train.txt"), header = TRUE)
object.size(y_train)

# 4) Dimensional exploration of data importen in 1, 2, and 3.

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

join_train_2 <- merge(join_train_1, X_train, all = TRUE)
memory.limit()





