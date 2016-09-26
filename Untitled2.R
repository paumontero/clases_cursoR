


read.csv("data/datos-felinos.csv")
gatos<- read.csv("data/datos-felinos.csv")
gatos[1]
gatos[[1]]
gatos$pelaje
gatos["pelaje"]
gatos[1, 1]
typeof("gatos$pelaje")
typeof(1)
typeof(2)
typeof(1, 1)
gatos[1, 1]
gatos[ , 1]
matrix_example <- matrix (seq(1,50), ncol = 5, nrow = 10, byrow=TRUE)
matrix_example
vector()
list()
edad <- c(2,3,5,12)
gatos <- cbind(gatos, edad)
ej6<- list(data_types=c("integer", "dable", "logical", "complex", "caracter"), data_structure =c("vector", "matrix", "list","data.frame"))
ej6 
levels(gatos$pelaje)
levels(gatos$pelaje) <- c(levels(gatos$pelaje), 'carey')
nuevaFila <- list("carey", 3.3, TRUE,9)
gatos <- rbind(gatos, nuevaFila)
str(gatos)
gatos
gatos$edad <- c(4, 5, 8, 9)
str(gatos)
gatos
gatos[-5, 1]
gatos
nueva_fila3 <- list("persa", 3.3, TRUE, 9)
gatos
rownames(gatos) <- NULL
gatos
df <- data.frame(id = c('a', 'b', 'c'),
                 x = 1:3, y = c(TRUE, TRUE, FALSE), 
                 stringsAsFactors = FALSE)
df
ej1 <- data.frame(nombre="pau", apellido="montero", numero = 6, stringsAsFactors = FALSE )
ej1
recreo <- c("si","no")
cbind(ej1, recreo)
ej1 <- cbind(ej1, recreo2=c("si","si"))
gapminder <- read.csv(file = gapminder)
read.csv("data/gapminder-FiveYearData.csv")
gapminder<- read.csv(("data/gapminder-FiveYearData.csv"))
gapminder
str(gapminder)
levels(gapminder$country)

help("readr_example")
install.packages(readxl)
install.packages("readxl")
library(readxl)
readxl:::check_file(path = path)
str(gapminder)
typeof(gapminder$country)
length(gapminder)
nrow(gapminder)
names(gapminder)
names(gapminder) <- c("pais", "anio", "pobl", "continente", "expecVida", "pbi" )
names(gapminder)
