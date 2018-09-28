##Regression Analysis
#Simple Linear Regression 1 IV 1 DV

data(women)
women
names(women)
str(women)

cov(women$height,women$weight)
cor(women$height,women$weight)
plot(women$height,women$weight)
abline(lm(weight~height,data=women),col='red')
names(women)
fit1=lm(weight~height,data=women)
summary(fit1)

attributes(fit1)
coef(fit1)
#can only predit within range

range(women$height)

#Prediction

(new1=data.frame(height=c(65,66)))
(p1=predict(fit1,newdata=new1))
new1=cbind(p1,new1)
 
colnames(new1)[1]='Weight'
new1
fit1
plot(fit1)

