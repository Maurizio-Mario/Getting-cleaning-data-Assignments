search()
library(XML)
Q3_url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml" 
Q3_url
Q3_data <- xmlTreeParse(Q3_url, useInternal = TRUE)
Q3_data
root_nodes <- xmlRoot(Q3_data)
xmlName(root_nodes)
names(root_nodes)
root_nodes[[1]][[2]][["zipcode"]]
xmlSApply(root_nodes, root_nodes[[1]][[2]][["zipcode"]])
?xmlSApply
zip_codes <- xpathSApply(root_nodes, "//zipcode", xmlValue)
zip_codes
sum(zip_codes == 21231)
q()
