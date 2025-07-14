#Modelo de pesca deportiva (pez vela) en los Cabos
##Objetivo: Evaluar el número de turistas deseables con permisos para pesca deportiva en Los Cabos 
sport_fishery <- function (marlin, turistas, Y){
  ###Inicializar variables
  k <- 23000
  r <- 0.11
  p_0 <- marlin ##población inicial
  muerte_propo <- .00001262
  turistas <- turistas
  B <- p_0
  ###Crear objetos para guardar resultados
  PescaMarlin <- numeric(Y) 
  PoblacionMarlin <- numeric(Y)
  PermisosPesca <- numeric(Y)
  
  ###Loop principal
  for (y in 1:Y){
    permisos_turistas <- runif(1)
    permisos_pesca_anual <- turistas*permisos_turistas
    marlinpesca <- muerte_propo*permisos_pesca_anual*B
    crecimiento <- B*r*(1-(B/k)) 
    B <- ceiling((B+crecimiento)-marlinpesca)
    PescaMarlin[y] <- ceiling(marlinpesca)
    PoblacionMarlin[y] <- B
    PermisosPesca[y] <- permisos_pesca_anual
    
  }
  
  res <- list(PescaMarlin=PescaMarlin, 
            PoblacionMarlin=PoblacionMarlin, 
            PermisosPesca=PermisosPesca)
  
  return(res)
}

modelo1 <- sport_fishery(24000,8500,150)
modelo2 <- sport_fishery(24000,5000,150)
modelo3 <- sport_fishery(24000,3500,150)
modelo4 <- sport_fishery(24000,3000,150)
modelo5 <- sport_fishery(24000,100,150)

#####Gràfica para comparar resultados poblacional
Años <- seq(1,length(modelo1$PescaMarlin))
plot(Años,modelo5$PoblacionMarlin,type="l", col="blue", ylim = c(9000,26000), xlim = c(0,length(modelo1$PoblacionMarlin)),ylab = "Población de pez vela")
lines(Años,modelo4$PoblacionMarlin,type="l", col="green")
lines(Años,modelo3$PoblacionMarlin,type="l", col="yellow")
lines(Años,modelo2$PoblacionMarlin,type="l", col="orange")
lines(Años,modelo1$PoblacionMarlin,type="l", col="red")
abline( h = 17000)
legend(length(modelo1$PescaMarlin)-10,27000, c("100","3000","3500","5000","8500"), horiz=F,bty="n",
       lty=1,lwd=2,col=c("blue","green","yellow","orange","red"))