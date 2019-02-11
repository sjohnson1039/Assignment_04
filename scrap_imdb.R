library(rvest)
library(stringr)

imdb = read_html("https://www.imdb.com/title/tt1201607/fullcredits?ref_=tt_ql_1")
cast_actors = html_nodes(imdb, xpath = '//*[@id="fullcredits_content"]/table[3]')
cast_actors
cast = html_table(cast_actors, trim = TRUE, fill = TRUE, dec = ".")
cast
# Write Data to CSV
write.csv(cast, "imdb.csv", row.names = FALSE, na = "", fileEncoding = "UTF-8")

# Read the csv
# data <- read.csv("imdb.csv")
df = read.csv(file="imdb.csv", sep=",", colClasses=c( "NULL", NA, "NULL", NA))

df2 = head(df,90)
print(class(df))
print(df2)

