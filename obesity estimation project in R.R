library("readxl")
library("dplyr")
library("ggplot2")
library("tidyverse")


#reading the excel data
ObesityFile <- read_excel("C:/Users/user/Documents/R projects/obesity-estimation-by-age-group-and-year.xlsx", col_names = TRUE, na= "")
ObesityFile

#observing the data
str(ObesityFile)

head(ObesityFile, 10)
tail(ObesityFile, 10)

View(ObesityFile)


#rounding up the value column by multiplying the values by 100 and creating a new column
percValue <- ObesityFile$Value * 100
percValue

#adding the new column to the data
ObesityFile2 <- mutate(ObesityFile, percValue)
ObesityFile2

#removing unwanted rows by column value from the data
ObesityFile2 <- ObesityFile2 %>% 
  filter(`Age Group`!= "TOTAL")

View(ObesityFile2)


#sub-setting the data into groups to see each values from all years for each age group
teenGroups <- ObesityFile2 %>% 
  filter(`Age Group`== "18-29 years")
view(teenGroups)

middlegroup <- ObesityFile2 %>% 
  filter(`Age Group`== "30-44 years")

adultgroup <- ObesityFile2 %>% 
  filter(`Age Group`== "45-59 years")

senioradultgroup <- ObesityFile2 %>% 
  filter(`Age Group`== "60+ years")

view(teenGroups)
view(adultgroup)
view(middlegroup)
view(senioradultgroup)

teen_avg <- ObesityFile2 %>% 
  group_by()

