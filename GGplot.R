# ggplot learning script
#Bearded-guy
#Feb 22, 2015

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

#ggplot2 is very good for data analysis.
head(iris)
#grammar
#must have a data fram. I.e. no vectors or matrixs.
#plyr
iris[1:2,]
#reshape
library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")
myplot <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(size = 4)
myplot

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size = 4)

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ] 

ggplot(d2, aes(carat, price, color = color)) + 
  geom_point()

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + 
  geom_boxplot()

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(aes(shape = Species), size = 4) + 
  facet_grid(.~ Species)
myplot + 
  geom_point(aes(shape = Species), size = 4) +
  facet_grid(.~ Species)

library("reshape2")
library(RColorBrewer)
display.brewer.all()

df  <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill = variable)) +
  geom_bar(stat = "identity", position = "dodge") +
  scale_fill_brewer(palette = "Set1")

