
## Suavizado con SMA

library("TTR")

# Ejemplo más sencillo
# n es el orden del SMA

x = c(1,2,3,4,5,6,7)

SMA(x, n = 3)

# Ejemplo de datos linces

linces <- SMA (lynx, n=3)
linces

plot(linces)
lines(lynx, col = 3)

# suavizado exponencial ets

library(forecast)

# función ets

etsmodel <- ets(nottem); etsmodel

# Modelo vs original

plot(nottem, lwd =3)
lines(etsmodel$fitted, col ="red")

#forecast
 plot(forecast(etsmodel, h =12))

# Intervalo de predicción: nivel de confianza 95%

 plot(forecast(etsmodel, h=12, level = 95))

# Holt-Winters multiplicativo
 
etsmodmult <- ets(nottem, model ="MMM") #error, tendencia, estacionalidad, defecto ZZZ

# comparación

plot(nottem, lwd=3)
lines(etsmodmult$fitted, col="red") 

plot(forecast(etsmodmult, h=12, level=95)) 
 
 
 

