#visualizaing with ggplot2------
gapminder2007<-gapminder %>%
  filter(year==2007)

gapminder2007


#load ggplot2
install.packages("ggplot2")
library(ggplot2)

#scatter plot
ggplot(gapminder2007, aes(x=gdpPercap, y=lifeExp))+
  geom_point()


#log scales
ggplot(gapminder2007, aes(x=gdpPercap, y=lifeExp))+
  geom_point()+
  scale_x_log10()

#additional aesthetics
ggplot(gapminder2007, aes(x=gdpPercap, y=lifeExp, color=continent, size=pop))+
  geom_point()+
  scale_x_log10()

#Faceting
ggplot(gapminder2007, aes(x=gdpPercap, y=lifeExp))+
  geom_point()+
  scale_x_log10()+
  facet_wrap(~continent)
