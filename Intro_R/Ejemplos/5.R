#OPERADOR APPLY

function1<-function(x){
  x<-x*5
  x
  }

attach(iris)
iris
str(iris)
plot(iris)
#TAPPLY Utilizarla sobre una hoja de datos para una variabledeterminada dada por un factor. El resultado es un vector

tapply(iris$Petal.Width,iris$Species, mean)
tapply(iris$Petal.Width,iris$Species, sd)
tapply(iris$Petal.Width,iris$Species, median)

#LAPPLY Se utiliza una funcion dada a una lista y se obtiene una lista como resultado
#SAPPLY Se utiliza una funcion dada a una lista y se obtiene un vector como resultado



       