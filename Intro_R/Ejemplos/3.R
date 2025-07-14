#EJERCICIO 4
ej_4<-read.csv("AreaBasal.csv",header=T)
ej_4
#str(ej_4)
#head(ej_4)
#names(ej_4)
DAP<-c(2.3,4.5,5.5,6.0,6.4,6.8,7.7,7.9,8.1,9.0)
ABT<-3.14*(DAP^2/40000)
#ABT
P1<-ABT*ej_4[1,]
#P1
ABT_P1<-round(sum(P1),digits = 2)
#ABT_P1

ABTP<-numeric(length(DAP)) #puede ser rep(0,length(DAP))
#ABTP

#RESPUESTA
#Camino largo
P1<-ABT*ej_4[1,]
ABTP1<-sum(P1)
ABTP[1]<-ABTP1 #hacer esto mismo por el mismo número de filas (10)

#Camino corto
tmp<-data.frame(matrix(ncol = 10,nrow=10))
tmp
for (i in 1:length(DAP)) {
  prueba<-ABT*ej_4[i,]
  abtp<-sum(prueba)
  tmp[i,]<-abtp
  tmp
  ABTP[i]<-round(abtp,digits = 2)
  ABTP
}
ABTT<-sum(ABTP)
ABTT

