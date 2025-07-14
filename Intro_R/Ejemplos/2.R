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

head(hoja_datos)
hoja_datos

boxplot(Datos$TasaSecuestro~Datos$Practica)

