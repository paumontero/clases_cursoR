gapminder
calcPBI <- function(dat, year = NULL, country = NULL) {
  if (!is.null (year)){
    dat<- dat[dat$year %in%year, ]
  }
  if (!is.null(country)) {
    dat <- dat[dat$country %in% country, ]
  }
  pbi <- dat$pop * dat$gdpPercap
  new <- cbind(dat, pbi = pbi)
  return(new)
}
library(plyr)
conPBI <- calcPBI(gapminder)
dlply(.data = conPBI, 
      .variables = c("continent", "year"), 
      .fun = function(dat) mean(dat$pbi) )

conComa <- function(x, ...){
  format(x, decimal.mark = ",", ...)
}

medias_continente <- d_ply(
  .data = gapminder,
  .variables = "continent",
  .fun = function(x) {
    meanGDPperCap <- mean(x$lifeExp)
    print(paste(
      "The  mean LIFE_EXP per continent for", unique(x$continent),
      "is", conComa(meanGDPperCap, big.mark = ".")
    ))
  }
)
head(gapminder)

lifeExp_continent <- ddply(gapminder, .(country), function(x) mean(x$lifeExp))
lifeExp_continent[c(which.max(lifeExp_continent$V1), which.min(lifeExp_continent$V1)), ]

lifeExp_anio
#Calcula la expectativa de vida promedio por continente y por año. ¿Cual tuvo la expectativa más corta y más larga en 2007?
#¿Cual tuvo el mayor cambio entre 1952 y 2007?
lifeExp_anio <- ddply(gapminder, .(continent, year), function(x) mean(x$lifeExp))
lifeExp_anio[lifeExp_anio$year =="2007", ]
lifeExp_anio[c(which.max(lifeExp_anio$V1), which.min(lifeExp_anio$V1)), ]
lifeExp_anio[lifeExp_anio$year %in% c(2007, 1952), ]
lifeExp_anio1952 <- lifeExp_anio[lifeExp_anio$year == 1952 , ]
lifeExp_anio2007 <- lifeExp_anio[lifeExp_anio$year == 2007, ]
lifExp_anio_1952_2007 <- 
  cbind(lifeExp_anio1952, 
        anio_2007 = lifeExp_anio2007$V1) 

lifExp_anio_1952_2007
names(lifExp_anio_1952_2007)[3] <- "anio_1952"
lifExp_anio_1952_2007$diferencia <- with(lifExp_anio_1952_2007, anio_2007 - anio_1952)
lifeExp_anio
#Calcula la diferencia de medias entre la expectativa de vida en los años 1952 y 2007 
#usando la salida del ejercicio 2 usando una de las funciones de plyr.
ddply(lifeExp_anio, .(continent), 
      function(x) x[x$year == 2007, "V1"] - x[x$year == 1952, "V1"])

ddply(gapminder, .(continent), summarise, 
      media_lifeExp = mean(lifeExp),
      sd_lifeExp = sd(lifeExp))
install.packages('dplyr')
library(dplyr)
year_country_gdp <- select(gapminder,year,country,gdpPercap)
# pipes (tubos)
year_country_gdp <- gapminder %>% select(year,country,gdpPercap)
head(year_country_gdp)

#para filtrar i pipes
year_country_gdp_euro <- gapminder %>%
  filter(continent == "Europe") %>%
  select(year, country, gdpPercap)

#Escribe en una sola operación (que puede tener varias lineas e incluir pipes) 
#que produzca un data.frame que tenga los valores de África para lifeExp, country y year, pero no otros continentes.
#¿Cuántas filas tiene tu data.frame? ¿Por qué?

year_country_life_africa <- gapminder %>%
  filter(continent == "Africa") %>%
  select(year, country, lifeExp)
year_country_life_africa

str(gapminder %>% group_by(continent, year))

lifeExp_bycountry <- gapminder %>%
  group_by(country) %>%
  summarize(mean_lifeExp = mean(lifeExp))
lifeExp_bycountry[which.max(lifeExp_bycountry$mean_lifeExp), ]

lifeExp_bycountry

lifeExp_bycountry %>% filter(mean_lifeExp %in% range(mean_lifeExp))



