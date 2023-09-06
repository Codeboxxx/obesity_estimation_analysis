install.packages("readxl")
library("readxl")
ObesityFile <- read_excel("C:/Users/user/Documents/R projects/obesity-estimation-by-age-group-and-year.xlsx", col_names = TRUE, na= "")
ObesityFile
str(ObesityFile)

head(ObesityFile, 10)
tail(ObesityFile, 10)

View(ObesityFile)

library("dplyr")
library("ggplot2")

View(ObesityFile$Value)

RoundValue <- round(ObesityFile$Value, digits = 2)
RoundValue

percValue <- ObesityFile$Value * 100
percValue

ObesityFile2 <- mutate(ObesityFile, percValue)
ObesityFile2
View(ObesityFile2)

totalYear <- ObesityFile2 %>% group_by(`Age Group`)
totalYear