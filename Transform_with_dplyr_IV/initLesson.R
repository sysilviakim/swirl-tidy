# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

set.seed(123)
df <- data.frame(
  year2016 = floor(runif(5, 25, 50)),
  year2017 = floor(runif(5, 25, 50)),
  year2018 = floor(runif(5, 25, 50)),
  year2019 = floor(runif(5, 25, 50)),
  year2020 = floor(runif(5, 25, 50))
)
rownames(df) <- paste0("book", seq(5))

df1 <- df[, 1:3]
df2 <- df[, 4:5]

colnames(df) <- rownames(df)
rownames(df) <- paste0("year", seq(2016, 2020))

df3 <- df[1:3, ]
df4 <- df[4:5, ]

rownames(df) <- NULL
df$Year <- seq(2016, 2020)
df5 <- df[, c(6, 1:3)]
df7 <- df6 <- df[c(2, 1, 3, 4, 5), c(6, 4:5)]
colnames(df7) <- tolower(colnames(df7))


