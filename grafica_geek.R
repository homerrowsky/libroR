# Grafica muy adornada

# Crear vectores que continen datos
x <- 1:20
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43, 8.51, 3.41, -8.23,
       -12.01, -6.58, 2.87, 14.12, 9.63, -4.58, -14.78, -11.67, 1.17, 15.62)
# Crear region en blanco para graficar. Esto no imprimira puntos/lineas ("type = n") pero establece
# las ejex X e Y a su tamaño adecuado
plot(x,y, type = "n", main = "",
     ylim = c(-16, 16))

# Agregar líneas horizontales en y = -5 e y = 5, que sean rojas, puntuadas y de doble grosor
abline(h = c(-5, 5), col = "red", lty = 2, lwd = 2)

# Agregar líneas verticales entre las dos líneas horizontales graficadas en el paso anterior
segments(x0=c(5,15), y0=c(-5,-5), x1=c(5,15), y1=c(5,5), col = "red", lty = 3, lwd = 2 )

# Graficar únicamente los puntos cuyo valor de y sea mayor 5 y darles apariencia distinta
points(x[y>=5], y[y>=5], pch=4, col="darkmagenta", cex=2)

# Graficar únicamente los puntos cuyo valor de y sea menor que -5 y darles apariencia distinta
points(x[y<=-5], y[y<=-5], pch=3, col="darkgreen", cex=2)

# Graficar unicamente los puntos cuyo valor de x esté entre -5 y 15 ( -5 <= x <= 15) y cuyo valor de
# 'y' esté entre -5 y 5 (-5 < y < 5)
points(x[(x>=5&x<=15)&(y>-5&y<5)], y[(x>=5&x<=15)&(y>-5&y<5)], pch=19, col="blue")

# graficar puntos cuya x sea MENOR a 5 O (OR) MAYOR a 15
# y cuya ordenada sea mayor a -5y menor a 5 (-5 < y < 5)
points(x[ (x<5 | x>15)&(y>-5&y<5)], y[(x<5 | x>15)&(y>-5&y<5)])

# Dibujar lineas que conecten los puntos (linea punteada "dash-dot-dash" lty = 4)
lines(x, y, lty = 4)

# Dibujar flecha que apunte hacia el "sweet spot"
arrows(x0=8, y0=14, x1=11, y1=2.5)

# Incrustar leyenda sobre la base de la flecha
text(x=8, y=15, labels = "sweet spot")

# Incrustar leyenda 
legend("bottomleft",
       legend = c("proceso global", "sweet", "estandar",
                  "muy grande", "too small", "sweet y range", "sweet x range"),
       pch = c(NA, 19,  1,  4,  3, NA, NA),
       lty = c( 4, NA, NA, NA, NA,  2, 3),
       lwd = c( 2, NA, NA, NA, NA,  2, 2),
       pt.cex =c(1,1,  1,  1,  1,  NA,NA), 
       col = c("black", "blue", "black", "darkmagenta", "darkgreen", "red", "red"),
       cex = 0.35
       )
