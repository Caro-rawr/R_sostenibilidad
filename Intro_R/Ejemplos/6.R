library(ggplot2)

#GRAFICACIONES
#Histograma

Incendio<-read.table("Fire_intensity.txt", header=T)
Incendio
str(Incendio)
Incendio<- na.omit(Incendio)
str(Incendio)
hist(Incendio$Fire.intensity)
hist(Incendio$IntTrans<-(log(Incendio$Fire.intensity)))

#Grafica de barras

barplot

#Ejercicio

UreaTabla<-
