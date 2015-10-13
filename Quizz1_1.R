Q1path <- "C://Users//MaurizioLocale//OneDrive//Data_Science//3 Getting and Cleaning Data//R programming//getdata-data-ss06hid.csv"
Q1_data <- read.csv(Q1path) 
dim(Q1_data)
names(Q1_data)
str(Q1_data)
sum(!is.na(Q1_data$VAL))
(subset(Q1_data$VAL, Q1_data$VAL == 24))
