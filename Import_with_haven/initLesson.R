# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

# library(tidyverse)
# library(haven)
# df <- read_dta("cces18_common_vv.dta")
# set.seed(123)
# cces18 <- df %>%
#   slice_sample(n = 50) %>%
#   select(inputstate, birthyr, gender, educ, race, pid3)

lesson_dir <- file.path(
  path.package(substring(find("swirl")[1], 9)), "Courses",
  "swirl-tidy", "Import_with_haven"
)

vec_nolabel <- c(1, 1, 3, 2, 4, 4)