head(iris)
library(ggplot2)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width,
                        color = Species , shape = Species)) +
  geom_point(size = 5) + 
  stat_ellipse(geom = "polygon", type = "norm", linetype = "solid",
               size = 1, alpha = 0.1, aes(fill = Species)) +
  labs(title = "Longeur et largeur des sépales selon l'espèce",
       x = "Longueur sépale (cm)", y = "Largeur sépale (cm)") +
  theme_light(base_size = 20)
