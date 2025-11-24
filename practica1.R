#EFECTO FOTOELECTRICO
library("ggplot2")

#datos

freq <- c( 5.155, 5.747, 5.988, 6.369, 6.944 ) *10^14 #Hz
volt <- c(   325,   497,   591,   732,   955 ) /10^3  #V
volti <- c( 590, 591, 591, 591, 592 ) /10^3  #V
intens <- c(1:5)

qe <- 1.60217662e-19 #C

a <- data.frame(freq, volt)
b <- data.frame(intens, volti)

#ajuste

ajuste <- lm(volt~freq)
summary(ajuste)

ggplot( a , aes(freq, volt)) + 
  geom_point() + geom_line(aes( y=predict(ajuste)), color=2) +
  labs(x = "Frecuencia (Hz)", y = "Voltaje (V)", title ="Ajuste lineal Voltaje vs Frecuencia") 




#resultados

hplanck <- qe * unname(ajuste$coefficients[2]) #J*s
hplanck
1.402e-16 * qe

hplanckt <- 6.62607015e-34
errorhplank <- abs(hplanck-hplanckt)/hplanckt * 100 #%

phi <-  -unname(ajuste$coefficients[1])   #J
errorphieV <- 8.512e-02




#ajuste

ajustei <- lm(volti~intens)
summary(ajustei) 

ggplot( b , aes(intens, volti)) + 
  geom_point() + geom_line(aes( y=predict(ajustei)), color=2) +
  labs(x = "Intensidad", y = "Voltaje (V)", title ="Representacion Voltaje vs Intensidad") + ylim(0.1, 0.9)


pendientei <- unname(ajustei$coefficients[2])
errori <- 0.0001155






#ESPECTRO DE EMISION

library(latex2exp)

R <- 1.09737e-7 #m-1


#1 HIDROGENO

lambdaH <- c( 655, 485, 433 ) *1e-9 #m
lH_inv <- 1/lambdaH

nH <- 2
mH <- nH + c( 1, 2, 3 )

nnH <- (1/(nH^2)-1/(mH^2))/R

ajusteH <- lm(lH_inv~nnH)
Z <- sqrt(unname(ajusteH$coefficients[2]))
round(Z,1) #Z=1 ES EL HIDROGENO

ggplot( data.frame(lH_inv, nnH) , aes(nnH, lH_inv)) + 
  geom_point() + geom_line(aes( y=predict(ajusteH)), color=2) +
  labs(y = TeX("1/$\\lambda$ (1/m)"), x = TeX("$(1/n_1^2−1/1n_2^2)/R$ (1/m)"), title ="Ajuste lineal espectro de emision elemento 1") 


#2 HELIO

lambdaH <- c( 591, 504, 447 ) *1e-9 #m
lH_inv <- 1/lambdaH

nH <- 4
mH <-  c( 1,2,3 )+4

nnH <- (1/(nH^2)-1/(mH^2))/R

ajusteH <- lm(lH_inv~nnH)
Z <- sqrt(unname(ajusteH$coefficients[2]))
round(Z,1) #Z=2 ES EL HELIO

ggplot( data.frame(lH_inv, nnH) , aes(nnH, lH_inv)) + 
  geom_point() + geom_line(aes( y=predict(ajusteH)), color=2) +
  labs(y = TeX("1/$\\lambda$ (1/m)"), x = TeX("$(1/n_1^2−1/1n_2^2)/R$ (1/m)"), title ="Ajuste lineal espectro de emision elemento 2") 



