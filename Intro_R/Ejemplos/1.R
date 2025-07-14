#Tipos de Bucles
#Bucle FOR
#Ejercicio I
  tmp<- seq(30,1000,by=2) #secuencia de número del 30 al 1,000 cada dos números
  rc<-numeric(length(tmp)) #Objeto vacío donde se guardará el loop de FOR
  for(i in 1:length(tmp)){ #construcción del loop FOR
  rc[i]<-sqrt(tmp[i])
  print(rc)
}
#Ejercicio II
  m<-20
  n<-0
  for (k in 1:length(m)){
    n(k)<-m*2/4
    }
  n
#Ejercicio III
  PobBallenas<-seq(1200,2000,by=100) #población de ballenas inicial que es un vector
  print(PobBallenas)
  NuevaPoblacion<- numeric(length(PobBallenas))
  Nacimientos<-2
  for (mesa in 1:length(PobBallenas)) {
    NuevaPoblacion[mesa]<-PobBallenas[mesa]+Nacimientos
    }
  NuevaPoblacion
#Bucle WHILE
  #Ejercicio IV
  g<-1
  while(g<6){
  print(g)
    g=g+1
  }
  g
#FUNCIONES
#Es también un tipo de objeto, para esto se genera a través de una función que se llama "function".
#Ejercicio V
  primerafuncion<-function(x){
    x<-x*5
    x
  }

#primerafuncion con disintios valores
  primerafuncion(1000)
  primerafuncion(.3509)
  primerafuncion(2)
  primerafuncion(.5)
#Ejercicio VI
  segundafuncion<-function(x,y=3){
    tmp1<-x*y
    tmp1
  }
#Ejercicio VII
  tabla1<-data.frame(5:1,1:5,5:1)
  tercerafuncion<-function(x){
    temp2<-mean(x[,1])
    temp3<-mean(x[,1])
    temp4<-mean(x[,1])
    return(c(temp2,temp3,temp4))
  }
tercerafuncion(tabla1)
#Guardar FUNCIONES con las funciones save y load

#EJERCICIO 3
practica3<-data.frame("character",1:600)
practica3
normcompos<-rnorm(200,.5,.13)
normferti<-rnorm(200,.9,13)
normlabo<-rnorm(200,.1,.13)
hist(normcompos)
hist(normferti)
hist(normlabo)

#EJERCICIO 3
#Generar una hoja de datos con dos variables: Practica (factor) y Tasa de Secuestro Carbono (numérico).  
#El factor Practica debe tener tres niveles: “Composta”, “Fertilización” y ”Laboreo”.#Cada nivel repetido
#200 veces. 
#Generar números aleatorios para la tasa de secuestro de carbono en función del factor práctica:
#a) Tasa de secuestro(Composta): Generar 200 números bajo una distribución normal con media 0.5
#y desviación estándar de 0.13.
#b) Tasa de secuestro (Fertilización) : Generar 200 números bajo una distribución normal con media 0.9
#y desviación estándar de 0.13.  
#c) Tasa de secuestro (Laboreo): Generar 200 números bajo una distribución normal con media 0.1 y
#desviación estándar de 0.13.

#SOLUCIÓN 1
Practica1 <- (rep(c("Composta", "Fertilización", "Laboreo"), each = 200))
TasaSecuestro <- c(
  rnorm(200, mean = 0.5, sd = 0.13),  # Composta
  rnorm(200, mean = 0.9, sd = 0.13),  # Fertilización
  rnorm(200, mean = 0.1, sd = 0.13)   # Laboreo
)

datossecuestro <- data.frame(Practica1=factor(Practica1),
                             TasaSecuestro = TasaSecuestro)

boxplot(datossecuestro$TasaSecuestro~datossecuestro$Practica)




#SOLUCIÓN 2
Practica2 <- rep(c("Composta", "Fertilización", "Laboreo"), each = 200)

TasaSecuestro <- c(
  rnorm(200, mean = 0.5, sd = 0.13),  # Composta
  rnorm(200, mean = 0.9, sd = 0.13),  # Fertilización
  rnorm(200, mean = 0.1, sd = 0.13)   # Laboreo
)

Datos <- data.frame(Practica2, TasaSecuestro)

head(Datos)
Datos

boxplot(Datos$TasaSecuestro~Datos$Practica)

  


poisson1<-rpois(1000,1000)
hist(poisson1)
poisson2<-rpois(1000,1)
hist(poisson2)
poisson3<-rpois(1000,.01)
hist(poisson3)


