library(tidyverse)

set.seed(100)
df <- tibble(
  n = seq(1e5),
  x = rbinom(1e5, 1, 0.5), 
  y = cumsum(x) / n
)

## In base R, plot(df$n, df$y)
ggplot(df, aes(x = n, y = y)) + 
  geom_point() + 
  xlab("Number of Trials") + 
  ylab("Estimated Probability of Heads")