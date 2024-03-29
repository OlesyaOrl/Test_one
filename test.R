#Проба пера
install.packages("readxl")
library(readxl)
install.packages("rpivotTable")
library(rpivotTable)
D <- read.csv("https://raw.githubusercontent.com/junaart/ForStudents/master/R_two_days/Lesson_2/data_1.csv", 
              header = TRUE, sep=",")
View(D)
rpivotTable::rpivotTable(D,rows="Пол", aggregatorName = "Count",vals="ФИО")
rpivotTable::rpivotTable(D,rows=c("Пол","Семейное.положение"), aggregatorName = "Count",vals="ФИО")
rpivotTable::rpivotTable(D,rows=c("Семейное.положение"), aggregatorName = "Average",vals="Оклад")
rpivotTable::rpivotTable(D,cols=c("Кол.во.детей"), rows=c("Семейное.положение"), aggregatorName = "Average",vals="Оклад")
D$ФИО[(D$"Кол.во.детей">=1) & !(is.na(D$"Кол.во.детей"))]
