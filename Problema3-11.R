F1<-c(17.6,18.9,16.3,17.4,20.1,21.6)
F2<-c(16.9,15.3,18.6,17.1,19.5,20.3)
F3<-c(21.4,23.6,19.4,18.5,20.5,22.3)
F4<-c(19.3,21.1,16.9,17.5,18.3,19.8)



df<-data.frame(F1,F2,F3,F4)
df
df<-stack(df)
names(df)<-c("Y","Horas")
df

modelo<-aov(Y~Horas,data=df)
summary(modelo)

tk1<-TukeyHSD(modelo)
tk1
plot(tk1)

boxplot(Y~Horas,data=df)

qqnorm(modelo$residuals)
qqline(modelo$residuals)




