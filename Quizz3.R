rm("prog_ass")
# Quizz 3_1
file_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
q1_3dt <- read.csv(file_url, header = TRUE)
names(q1_3dt)

## Quizz 3_1.  Create a logical vector that identifies the households on greater than 10 acres who sold more than $10,000 worth of agriculture products. Assign that logical vector to the variable agricultureLogical. Apply the which() function like this to identify the rows of the data frame where the logical vector is TRUE. which(agricultureLogical) What are the first 3 values that result?

tabulate(q1_3dt$ACR)
tabulate(q1_3dt$AGS)
table(q1_3dt$ACR, q1_3dt$AGS)
agri_logical <- subset(q1_3dt, ACR == 3 & AGS == 6)

# Quizz3_2. Using the jpeg package read in the following picture of your instructor into R https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg Use the parameter native=TRUE. What are the 30th and 80th quantiles of the resulting data? 

search()
install.packages("jpeg")
