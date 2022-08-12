#variables

a<-786
a
x<-c(1,2,3)
x

seq(0:50)
x2<-c("a","b",7)
x2

#data freme
df<-data.frame(age=c(1,2,3),name=c("akshay","vijay","vidyut"),
               movie=c("khiladi","master","commando"))
df
df1<-data.frame(a=c(1,2,3),e=1:3)
df1
print(x2[2:3])
print(df[1:2,1:3])
print(df[c(2,3),2])
print(df[2,2])
print(df[1])
print(df[1,])
print(df[,1])


#########################################################

airquality<-datasets::airquality


head(airquality,5)
tail(airquality,5)
airquality[50:70,c(1:3)]
df2<-airquality[,-5]
df2
summary(airquality[1:3,2:4])

airquality$Ozone
describe(airquality)     ##psych
stat.desc(airquality)    ##pastecs


plot(airquality)
#scatterplot
plot(airquality$Temp,airquality$Wind,type="p")

#points and lines
plot(airquality$Wind,type="l")

plot(airquality$Wind,type="b")

plot(airquality$Wind,xlab="ozon concerntration",
     main = "ozon level in the city",
     ylab="no of instances",col="Blue", type='l')

#horizontal bar plot
barplot(airquality$Ozone,main = "ozon concerntration in air",
        xlab="ozon concerntration",
        ylab = "no of instances",col = "blue",horiz = F,axes = F)

#histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = "solar radiation value in air",
     xlab = "solar red.",col = "orange")

#single boxplot
boxplot(airquality$Wind, main="box plot",col = "purple")
boxplot.stats(airquality$Wind)$out

boxplot(airquality$Ozone, main="box plot",col = "blue")
boxplot.stats(airquality$Ozone)$out


#multiple box plot
boxplot(airquality[,1:2], main="multiple",col = c("purple","blue"))

###################################################################################################

par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty="o")

plot(airquality$Ozone,col = 'Black')
plot(airquality$Ozone, airquality$Wind, col = 'Yellow')
plot(airquality$Ozone, type="l", col = 'Green')
plot(airquality$Solar.R, type="l", col = 'Purple')
plot(airquality$Wind, type="l", col = 'Brown')
barplot(airquality$Ozone, main = 'Ozone Concentration in air',
        xlab = 'Ozone levels', col = 'Blue', horiz = "True")
barplot(airquality$Wind, main = 'Wind',
        xlab = 'Wind', col = 'Red', horiz = "False")
boxplot(airquality$Ozone, col = 'Pink')
boxplot(airquality$Wind, col = 'Orange')




