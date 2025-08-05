#Organize project folder #data
#script
#results 

# creat folder

dir.create("results")
dir.create("data")
dir.create("script")
# R Data types
#-1 numeric with decimal point positive or negative 
x=24
class(x)
y=40
class(y)
#2 integer/whole number
# R classify decimal& whole num as numeric
z=24L
class(z)
var_1 = c("P001","P002","P003","P004","P005","P006","P007","P008","P009","P010","P011","P012","P013","P014,P015","P016","P017","P018","P019")
class(var_1)
var_2 = c(34,28,45,39,50,41)
class(var_2)
mean(var_2)
var_3 = c("Male", "Female")
class(var_3)
# factor or categorical data
#either written as numeric (0,1) or charcter(normal, cancer)
disease_status = c("cancer","normal","cancer","normal","cancer","normal")
class(disease_status)
#convert class into factor 
disease_status = as.factor(disease_status)
class(disease_status)
disease_status
disease_status = factor(disease_status,levels = c("normal","cancer"))
disease_status
# 5 logical data type
age = c(34,28,45,39,50,30)

var_4 = age >25
bmi= c(22.5,20.3,26.7,23.8,27.1)
var_5 = bmi 
class(var_5)
#convert numeric to integer
var_6 = as.integer(var_5)
#import csv file
data = read.csv(file.choose())
str(data) #check structure
data$gender_fac = as.factor(data$gender)
str(data)
#convert factor into numeric factor 
data$gender_num =ifelse(data$gender_fac=="Female",1,0)
class(data$gender_num)
data$gender_num = as.factor(data$gender_num)
write.csv(data,file = "results/patient_results.csv")
#save workspace
#save entire workspace
save.image(file = "full_workspace.RData")
save(disease_status,file="workspace.RData")
load("workspace.RData")

load("full_workspace.RData")
