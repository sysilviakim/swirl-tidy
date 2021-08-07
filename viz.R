library(tidyverse)
data(midwest)

pdf("midwest_percblack_1.pdf", width = 5, height = 3.5)
ggplot(midwest, aes(percblack)) + 
  geom_histogram()
dev.off()

pdf("midwest_percblack_2.pdf", width = 5, height = 3.5)
ggplot(midwest, aes(percblack)) + 
  geom_histogram(bins = 60)
dev.off()

pdf("midwest_percblack_3.pdf", width = 5, height = 3.5)
ggplot(midwest, aes(percblack)) + 
  geom_histogram(binwidth = 5)
dev.off()

pdf("midwest_percblack_4.pdf", width = 5, height = 3.5)
ggplot(midwest, aes(percblack)) + 
  geom_histogram(binwidth = 5) + 
  xlab("Population ")
dev.off()

pdf("midwest_percblack_4.pdf", width = 5, height = 3.5)
ggplot(midwest, aes(percblack)) + 
  geom_histogram(binwidth = 5) + 
  xlab("Population ")
dev.off()

pdf("afghan_hist_1.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age)) +
  geom_histogram()
dev.off()

pdf("afghan_hist_2.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age, y = after_stat(density))) +
  geom_histogram()
dev.off()

pdf("afghan_hist_3.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age, y = after_stat(density))) +
  geom_histogram(binwidth = 5)
dev.off()

pdf("afghan_hist_5.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age, y = after_stat(density))) +
  geom_histogram(binwidth = 5, boundary = 0) + 
  scale_x_continuous(breaks = seq(20, 80, by = 10))
dev.off()

pdf("afghan_hist_6.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age, y = after_stat(density))) +
  geom_histogram(binwidth = 5, boundary = 0) + 
  scale_x_continuous(breaks = seq(20, 80, by = 10)) +
  labs(x = "Age", y = "Density", title = "Distribution of respondent's age")
dev.off()

pdf("afghan_hist_7.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age, y = after_stat(density))) +
  geom_histogram(binwidth = 5, boundary = 0) + 
  scale_x_continuous(breaks = seq(20, 80, by = 10)) +
  labs(x = "Age", y = "Density", title = "Distribution of respondent's age") + 
  theme_bw()
dev.off()

pdf("afghan_density_1.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age, y = after_stat(density))) +
  geom_density(adjust = 1/2) + 
  scale_x_continuous(breaks = seq(20, 80, by = 10)) +
  labs(x = "Age", y = "Density", title = "Distribution of respondent's age")
dev.off()

pdf("afghan_density_2.pdf", width = 5, height = 3.5)
ggplot(afghan, aes(x = age, y = after_stat(density))) +
  geom_histogram(binwidth = 5, boundary = 0) + 
  geom_density(col = "red", adjust = 1/2) + 
  scale_x_continuous(breaks = seq(20, 80, by = 10)) +
  labs(x = "Age", y = "Density", title = "Distribution of respondent's age")
dev.off()

pdf("afghan_bar_1.pdf")
afghan %>%
  mutate(
    x = case_when(
      violent.exp.ISAF == 0 ~ "No harm",
      violent.exp.ISAF == 1 ~ "Harm",
      is.na(violent.exp.ISAF) ~ "Non-response"
    )
  ) %>%
  ggplot(aes(x = x, y = after_stat(prop), group = 1)) + 
  geom_bar()
dev.off()

pdf("afghan_bar_2.pdf")
afghan %>%
  mutate(
    x = case_when(
      violent.exp.ISAF == 0 ~ "No harm",
      violent.exp.ISAF == 1 ~ "Harm",
      is.na(violent.exp.ISAF) ~ "Non-response"
    )
  ) %>%
  ggplot(aes(x = x, y = after_stat(prop), group = 1)) + 
  geom_bar() +
  labs(
    x = "Response category", y = "Proportion of the respondents",
    title = "Civilian victimization by the ISAF"
  )
dev.off()

pdf("afghan_bar_3.pdf")
afghan %>%
  mutate(
    x = case_when(
      violent.exp.ISAF == 0 ~ "No harm",
      violent.exp.ISAF == 1 ~ "Harm",
      is.na(violent.exp.ISAF) ~ "Non-response"
    )
  ) %>%
  ggplot(aes(x = x, y = after_stat(prop), group = list.group)) + 
  geom_bar() +
  labs(
    x = "Response category", y = "Proportion of the respondents",
    title = "Civilian victimization by the ISAF"
  ) + 
  facet_wrap(~ list.group)
dev.off()

pdf("afghan_barplot_1.pdf", width = 4.5, height = 4.5)
ISAF.ptable <- prop.table(table(ISAF = afghan$violent.exp.ISAF, 
                                exclude = NULL))
ISAF.ptable 

## make barplots by specifying a certain range for y-axis
barplot(ISAF.ptable,
        names.arg = c("No harm", "Harm", "Nonresponse"), 
        main = "Civilian victimization by the ISAF",
        xlab = "Response category",
        ylab = "Proportion of the respondents", ylim = c(0, 0.7))
dev.off()

pdf("afghan_barplot_2.pdf", width = 4.5, height = 4.5)
## repeat the same for the victimization by Taliban
Taliban.ptable <- prop.table(table(Taliban = afghan$violent.exp.taliban, 
                                   exclude = NULL)) 
barplot(Taliban.ptable,
        names.arg = c("No harm", "Harm", "Nonresponse"), 
        main = "Civilian victimization by the Taliban",
        xlab = "Response category",
        ylab = "Proportion of the respondents", ylim = c(0, 0.7)) 
dev.off()


pdf("maryland_election_lineplot_1.pdf", width = 5, height = 3.5)
data(elections, package = "qss")
elections %>%
  filter(county == "prince georges") %>%
  mutate(twoparty_vs = dem / (rep + dem)) %>%
  ggplot(aes(x = year, y = twoparty_vs)) + 
  geom_line()
dev.off()

