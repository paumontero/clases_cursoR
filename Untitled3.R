x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c("a", "b", "c", "d", "e")
x
x[1]
x[3]
x[c(1,3)]
x[1:4]
x[1:1]
x[c(1, 1, 3)]
x[6]
x[-1]
x <- x[-4]
x
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x[c(-1,-5)]
x[c(2,3,4)]
x[2:4]
x[c("a", "b")]
x[-which(names(x)=="a")]
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x[-which(names(x) == "g")]
names(x)=="g"
names(x==c("a", "c"))
x
x<- x[-4]
names(x==c("a", "c"))
names(x)%in% c("a","c")
nammes(x)=="a"|names(x)=="c"
x[c(TRUE, TRUE)]
x[x>7]
x[x>6&x<7]
x>4&x<7
x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c('a', 'b', 'c', 'd', 'e')
print(x)
x>4&x<7
x[x>4&x<7]
f <- factor(c("a", "a", "b", "c", "c", "d"))
f[f == "a"]
f
f[f%in%c("a","c")]
f[1:3]
as.numeric()
set.seed(2)
m<-matrix(rnorm(6*4), ncol=4,nrow=6)
m
m[5, 2]
m[3:4, c(3, 1)]
m[, c(3,4)]
m[3,]
m[3, , drop=FALSE]
m
m[5]
set.seed(1)
m<-matrix(rnorm(6*4), ncol=4,nrow=6)
m
m[5]
m <- matrix(1:18, nrow = 3, ncol = 6)
print(m)
m[2,c(4,5)]
m[4:5,2]
m[2:5]
m[2,4,2,5]
xlist <- list(a = "UNTDF", b = 1:10, data = head(iris))
xlist[1]
xlist
class(xlist[1])
class(xlist[2])
class(xlist[3])
xlist[1:2]
xlist[[1:2]]
xlist[[1]]
xlist[[2]]
xlist[[3]]
xlist[[3]][3]
xlist[[3]][[3]]
xlist$a
xlist[[3]][3][4,]
xlist[[3]][3]][xlist[[3]][3]==1.4]
xlist$data["Petal.Width"][xlist$data$Petal.Width==0.2, , drop=FALSE]
xlist$data["Petal.Lenght"][xlist$data$Petal.Length == 1.5, , drop=FALSE]
mod <- aov(pop ~ lifeExp, data=gapminder)
str(mod)
attributes(mod)
names(mod)
mod$df.residual
lapply(mod, function)
head(gapminder[3],5)
head(gapminder$year)
gapminder[gapminder$country=="Argentina",]
gapminder[gapminder$year == 1957,]
gapminder(-1:4)
gapminder [,-(1:4)]
head(gapminder)
