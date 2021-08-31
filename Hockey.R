library("XML")
library("methods")
poss1 <- "C:\\Users\\lenovo\\Desktop\\Colgate Possession\\Colgate_at_RPI_P1_02-01-2019.xml"
poss1 <- xmlParse(poss1)
poss1 <- xmlToList(poss1)
poss2 <- "C:\\Users\\lenovo\\Desktop\\Colgate Possession\\Colgate_at_RPI_P2_02-01-2019.xml"
poss2 <- xmlParse(poss2)
poss2 <- xmlToList(poss2)
poss3 <- "C:\\Users\\lenovo\\Desktop\\Colgate Possession\\Colgate_at_RPI_P3_02-01-2019.xml"
poss3 <- xmlParse(poss3)
poss3 <- xmlToList(poss3)

game_plays = read.csv("game_plays.csv")
game_stats = read.csv("game_skater_stats.csv")


