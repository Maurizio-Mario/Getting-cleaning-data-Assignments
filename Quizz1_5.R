Q3_down <- download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", "getdata%2Fdata%2Fss06pid.csv")
DT <- fread("getdata%2Fdata%2Fss06pid.csv")
library(data.table)
DT
system.time(replicate(1000, (tapply(DT$pwgtp15,DT$SEX,mean))))
system.time(replicate(1000, DT[,mean(pwgtp15),by=SEX]))
system.time(replicate(1000, sapply(split(DT$pwgtp15,DT$SEX),mean)))
system.time(replicate(1000, mean(DT$pwgtp15,by=DT$SEX)))

