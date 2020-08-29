# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

## https://rawgit.com/rstudio/cheatsheets/master/data-import.pdf

lesson_dir <- file.path(
  path.package(substring(find("swirl")[1], 9)), "Courses",
  "swirl-tidy", "Import_with_readr"
)

# write_file("a,b,c\n1,2,3\n4,5,NA", file.path(lesson_dir, "file.csv")) 
# write_file("a;b;c\n1;2;3\n4;5;NA", file.path(lesson_dir, "file2.csv"))
# write_file("a|b|c\n1|2|3\n4|5|NA", file.path(lesson_dir, "file.txt"))
# write_file("a b c\n1 2 3\n4 5 NA", file.path(lesson_dir, "file.fwf"))
# write_file("a\tb\tc\n1\t2\t3\n4\t5\tNA", file.path(lesson_dir, "file.tsv"))
write_file(
  seq(3) %>%
    map(~ seq(.x, 30, by = 3)) %>%
    cross() %>%
    map(~ paste(.x, sep = ",", collapse = ",")) %>%
    paste(collapse = "\n") %>%
    paste0(., "\n21,some string,NA") %>%
    paste0("a,b,c\n", .),
  file.path(lesson_dir, "file_mess.csv")
)
