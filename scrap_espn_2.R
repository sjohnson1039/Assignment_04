library(XML)
library(RCurl)
library(rlist)
theurl <- getURL("http://www.espn.com/nba/team/stats/_/name/sa/san-antonio-spurs")
tables <- readHTMLTable(theurl, trim=TRUE, as.data.frame = TRUE, header=TRUE)

# Names of players
# print(tables[2])

# Stats
# print(tables[4])
# Game DataFrame
# We have to add here the names of players only and our perfect dataframe is ready
df_game = as.data.frame(matrix(unlist(tables[[4]]),  nrow=length(unlist(tables[[4]][[1]]))))
players = tables[2]
df_game=cbind( players, df_game)


# Names of players
# print(tables[6])

# Stats
# print(tables[8])

# Shooting DataFrame
# We have to add here the names of players only and our perfect dataframe is ready
df_shooting = as.data.frame(matrix(unlist(tables[[8]]),  nrow=length(unlist(tables[[8]][[1]]))))
players = tables[6]
players = strsplit(players, " ")
df_shooting = cbind(players, df_shooting)

