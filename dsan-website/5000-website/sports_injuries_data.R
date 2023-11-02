#install.packages("rvest")
library(rvest)

url <- "https://www.iii.org/fact-statistic/facts-statistics-sports-injuries"

webpage <- read_html(url)

data <- webpage %>% html_table(fill = TRUE)

csv_filename <- "sports_injuries_data.csv"

write.csv(data[[1]], csv_filename, row.names = FALSE)

file_path <- "data/raw/sports_injuries_data.csv"
si_data <- read.csv(file_path)
head(si_data)

