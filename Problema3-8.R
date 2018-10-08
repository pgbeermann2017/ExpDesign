rm(list=c(ls()))

N10<-c(1530,1530,1440)
N15<-c(1610,1650,1500)
N20<-c(1560,1730,1530)
N25<-c(1500,1490,1510)

df<-data.frame(N10,N15,N20,N25)
df
df<-stack(df)
names(df)<-c("Y","Varillado")
df

modelo<-aov(Y~Varillado,data=df)
summary(modelo)

tk1<-TukeyHSD(modelo)
tk1
plot(tk1)

boxplot(Y~Varillado,data=df)

qqnorm(modelo$residuals)
qqline(modelo$residuals)


