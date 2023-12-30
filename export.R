#make a data frame----
x=1:10
y=11:20
data=data.frame(x,y)
data

#export a data frame to notepad file----
write.table(data, file="datam.txt", sep=" ", row.names = F)

#export a data frame to csv file----
write.table(data, file="datam.csv", sep=",", row.names = F)

write.csv(data, "datam.csv", row.names = F)

#export a data frame to stata file----
write.dta(data, "datam.dta")
read.dta("datam.dta")

#export a data frame to spss file----
library(haven)
data %>% write_sav("F:/datam.sav")


#using writexl package
library(writexl)

data %>% write_xlsx("F:/datam.xlsx")
data %>% write_csv("F:/datam.csv")
data %>% write_rds("F:/datam.rds")

