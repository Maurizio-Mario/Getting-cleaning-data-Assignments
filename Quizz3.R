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
library(jpeg)
dt <- readJPEG("getdata-jeff.jpg", TRUE)
quantile(dt, c(.30, .80))

## Question 3
## Load the Gross Domestic Product data for the 190 ranked countries in this data set: https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv. Load the educational data from this data set: https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv. Match the data based on the country shortcode. How many of the IDs match? Sort the data frame in descending order by GDP rank (so United States is last). What is the 13th country in the resulting data frame? 

fileUrl_gdp <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
gdp <- read.csv(fileUrl_gdp, header = TRUE, stringsAsFactors=FALSE)

gdp <- gdp[gdp$Gross.domestic.product.2012 > 0,]

fileUrl_edu <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
edu <- read.csv(fileUrl_edu, header = TRUE)

country_id <- merge(gdp, edu, by.x = "X", by.y = "CountryCode")
dim(contry_id)

# Question 4
# What is the average GDP ranking for the "High income: OECD" and "High income: nonOECD" group?

sum(!is.na(country_id$Income.Group == "High income: OECD"))

mean(as.numeric(country_id$Gross.domestic.product.2012)[country_id$Income.Group == "High income: OECD"])

# Question 5
#Cut the GDP ranking into 5 separate quantile groups. Make a table versus Income.Group. How many countries are Lower middle income but among the 38 nations with highest GDP?

qnt2 <- cut(as.numeric(country_id$Gross.domestic.product.2012), breaks = 5)
summary(qnt2)

table(qnt2, country_id$Income.Group)
