NHL_Data<-read.csv("/Users/josefdipietrantonio/Documents/HPMS/Project 2/game_plays.csv")
#This is using directory of my computer. Just replace with the zipfile path

install.packages("sqldf")
library(sqldf)

#Retrival of each count of each event by period from NHL_Data set. Events are Hits,Shots,MissedShots,Penalties,Goals,Faceoffs,BlockedShots,Takeaways, and Giveaways

HitsTable<-sqldf("SELECT game_id, period, team_id_for, count(event) as Hits FROM NHL_Data WHERE event = 'Hit' AND periodType = 'REGULAR'
                 Group by game_id, period, team_id_for")


ShotsTable<-sqldf("SELECT game_id, period, team_id_for, count(event) as Shots FROM NHL_Data WHERE event = 'Shot' AND periodType = 'REGULAR'
                  Group by game_id, period, team_id_for")


MissedShotsTable<-sqldf("SELECT game_id, period, team_id_for, count(event) as MissedShots FROM NHL_Data WHERE event = 'Missed Shot' AND periodType = 'REGULAR'
                        Group by game_id, period, team_id_for")


PenaltiesTable<-sqldf("SELECT game_id, period, team_id_for, count(event) as Penalties FROM NHL_Data WHERE event = 'Penalty' AND periodType = 'REGULAR'
                      Group by game_id, period, team_id_for")


GoalsTable<-sqldf("SELECT game_id, period, team_id_for, count(event) as Goals FROM NHL_Data WHERE event = 'Goal' AND periodType = 'REGULAR'
                  Group by game_id, period, team_id_for")


FaceoffsTable<-sqldf("SELECT game_id, period, team_id_for, count(event) as Faceoffs FROM NHL_Data WHERE event = 'Faceoff' AND periodType = 'REGULAR'
                     Group by game_id, period, team_id_for")


BlockedShotsTable <-sqldf("SELECT game_id, period, team_id_for, count(event) as BlockedShots FROM NHL_Data WHERE event = 'Blocked Shot' AND periodType = 'REGULAR'
                          Group by game_id, period, team_id_for")


TakeawaysTable <- sqldf("SELECT game_id, period, team_id_for, count(event) as Takeaways FROM NHL_Data WHERE event = 'Takeaway' AND periodType = 'REGULAR'
                        Group by game_id, period, team_id_for")


GiveawaysTable <- sqldf("SELECT game_id, period, team_id_for, count(event) as Giveaways FROM NHL_Data WHERE event = 'Giveaway' AND periodType = 'REGULAR'
                        Group by game_id, period, team_id_for")

#Merge of these count tables into dataframe in R

mergedNHLOriginal<- merge(FaceoffsTable,
                          merge(ShotsTable,
                                merge(MissedShotsTable,
                                      merge(BlockedShotsTable,
                                            merge(TakeawaysTable,
                                                  merge(GiveawaysTable,
                                                        merge(HitsTable,
                                                              merge(PenaltiesTable,
                                                                    GoalsTable , all.x = TRUE,  all.y = TRUE),
                                                              all.x = TRUE,  all.y = TRUE),
                                                        all.x = TRUE,  all.y = TRUE),
                                                  all.x = TRUE,  all.y = TRUE),
                                            all.x = TRUE,  all.y = TRUE),
                                      all.x = TRUE, all.y = TRUE),
                                all.x = TRUE, all.y = TRUE),
                          all.x = TRUE, all.y = TRUE)


# Ensures the dataframe is square and filled
mergedNHLOriginal[is.na(mergedNHLOriginal)] <- 0

#set period as factor
mergedNHL$period<-factor(mergedNHL$period)

#Create working copy of dataset
mergedNHL<-mergedNHLOriginal