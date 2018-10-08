C1<-c(9,12,10,8,15)
C2<-c(20,21,23,17,30)
C3<-c(6,5,8,16,7)

df<-data.frame(C1,C2,C3)
df
df<-stack(df)
names(df)<-c("Y","Circuito")
df

modelo<-aov(Y~Circuito,data=df)
summary(modelo)

tk1<-TukeyHSD(modelo)
tk1
plot(tk1)

boxplot(Y~Circuito,data=df)

qqnorm(modelo$residuals)
qqline(modelo$residuals)


