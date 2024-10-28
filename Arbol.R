# Cargar la librería pedsuite
# install.packages("pedsuite")  # Descomentar si no está instalada
library(pedsuite)

# Configuración de la semilla para reproducibilidad
set.seed(1995)

# Crear el árbol genealógico
ped <- ped(
  id = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20),
  fid = c(0, 0, 0, 0, 2, 2, 2, 2, 4, 4, 4, 4, 4, 8, 8, 8, 8, 4, 4, 4),
  mid = c(0, 0, 0, 0, 1, 1, 1, 1, 3, 3, 3, 3, 3, 13, 13, 13, 13, 3, 3, 3),
  sex = c(2, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 2, 2, 2, 1, 2, 2, 2, 1)
)

# Visualizar el árbol genealógico
plot(ped)

# Añadir leyenda
legend("topright",                     # Posición de la leyenda
       legend = c("Mujeres",            # Texto de la leyenda
                  "Hombres",
                  "Suegros"),
       col = c("pink", "blue", "green"), # Colores de las etiquetas
       pch = c(19, 19, 19),              # Tipo de punto (rellenado)
       cex = 0.8)                        # Tamaño del texto
