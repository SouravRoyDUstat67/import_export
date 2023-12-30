#readxl package only for importing xlsx & xls file----
library("readxl")

data= read_excel("G:/quarantine/data/orderlines.xlsx")

data1= read_xlsx("G:/quarantine/data/orderlines.xlsx")

# readr package
#when a excel file of two column is separated by comma & semi-colon
#then we use csv and csv2 respectly
data= read_csv("G:/quarantine/data/Weather.csv")
dplyr::glimpse(data)


data1= data %>% sample_n(10, F)

write_csv(data1, "data1.csv")

data= read_csv("G:/quarantine/data/Weather.csv", col_names = F)

data= read_csv("G:/quarantine/data/Weather.csv", skip= 1, col_names = F)

data= read_csv("G:/quarantine/data/Weather.csv",
               col_names = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"))

data= read_csv("G:/quarantine/data/Weather.csv",
            skip = 1, 
            col_names = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"))

data= read_csv("G:/quarantine/data/Weather.csv", n_max = 10)

data= read_csv("G:/quarantine/data/test.csv", na= c("."))

data= read_csv("G:/quarantine/data/test.csv")

data= read_delim("G:/quarantine/data/ACWI.csv", delim= ",")

read_delim("G:/quarantine/data/ACWI.csv", delim= ",", col_names = F)

read_csv("G:/quarantine/data/ACWI.csv")


#spss using haven package
library(haven)
data= read_sav("G:/covid-19/regular_case(covid-19)1.sav")
data %>% class()

data= read_dta("G:/covid-19/regular_case(covid-19)1.dta")
data %>% class()


#using foreign package
library(foreign)

data= read.csv("G:/quarantine/data/test.csv", header = T)
data %>% class()

data= read.spss("G:/covid-19/regular_case(covid-19)1.sav",
                to.data.frame = T)
data %>% class()

data= read.dta("G:/covid-19/regular_case(covid-19)1.dta")
data %>% class()

