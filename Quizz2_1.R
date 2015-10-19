install.packages("sqldf")
library(sqldf)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv "
acs <- read.csv(fileUrl, header = TRUE)
dim(acs)
??sqldf
sqldf("select * from acs where AGEP < 50 and pwgtp1")
sqldf("select pwgtp1 from acs where AGEP < 50")
