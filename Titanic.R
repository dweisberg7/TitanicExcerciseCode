#Making Titanic avaliable in your workspace
#Load GGplot 2
library(ggplot2)

Titanic <-
  data.frame(read.csv("~/Desktop/Rstudio/Titanic_Exercise/titanic_clean.csv"))

# 1 - Check the structure of Titanic
str(Titanic)

# 2 - Use ggplot() for the first instruction
ggplot(Titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
ggplot(Titanic, aes(x = pclass, fill = sex)) +
  geom_bar(position = "dodge") +
  facet_grid(.~survived)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4
ggplot(Titanic, aes(x = pclass, y = age, col = sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(.~survived)
