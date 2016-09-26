mi-vector <- vector(length = 3)
mi_vector <- vector(length = 3)
str(gatos)
str(gatos%vector)
str(gatos&pelaje)
srt(gatos&peso)
gatos
str(gatos$peso)
gatos <- cbind(gatos, edad)
nuevaFila <- list("carey", 3.3, TRUE, 9)
gatos <- rbind(gatos, nuevaFila)
levels(gatos$pelaje)
levels(gatos$pelaje) <- c(levels(gatos$pelaje), 'carey')
gatos <- rbind(gatos, list("tortoiseshell", 3.3,
seq(2, 120)
     
mi_secuencia <- 1:10
head(mi_secuencia)
tail(mi_secuencia)
tail(mi_secuencia, 2)
