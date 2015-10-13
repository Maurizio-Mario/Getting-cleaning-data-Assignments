Q2_path <- "C://Users//MaurizioLocale//OneDrive//Data_Science//
              3 Getting and Cleaning Data//R programming//
              getdata-data-DATA.gov_NGAP.xlsx"
library(xlsx)
Q2_data <- read.xlsx("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/R programming/getdata-data-DATA.gov_NGAP.xlsx", sheetIndex = 1, header = TRUE)
?read.xlsx
summary(Q2_data)

dat <- read.xlsx("C:/Users/MaurizioLocale/OneDrive/Data_Science/3 Getting and Cleaning Data/R programming/getdata-data-DATA.gov_NGAP.xlsx", 
                 sheetIndex = 1, header = TRUE, colIndex = 7:15, rowIndex = 18:23)

dat
sum(dat$Zip*dat$Ext,na.rm=T) 
