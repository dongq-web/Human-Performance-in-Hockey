#set the length as the length of Time
Time <- Overall_table$Time
#add a new column of PossID
PossID <- matrix(0, length(Time), 1)
colnames(PossID) <- 'PossID'
Overall_table <- cbind.data.frame(Overall_table, PossID)

#add two counters, when possesion of i is different from possesion of i+1, the counter will add one
counterrpi <- 1
counteroppo <- 1
for (i in 1:(length(Time)-1))
{
  if (Overall_table[i, 'Poss'] == '')
  {
    Overall_table[i, 'PossID'] <- 1
  }
  #when possession of i is different from possession of i+1 and possesion is RPI
  if (Overall_table[i, 'Poss'] != Overall_table[i+1, 'Poss'] & Overall_table[i, 'Poss'] == 'RPI')
  {
    Overall_table[i, 'PossID'] <- counterrpi
    counterrpi <- counterrpi +1
  }
  #when possession of i is the same as possession of i+1 and possesion is RPI
  if (Overall_table[i, 'Poss'] == Overall_table[i+1, 'Poss'] & Overall_table[i, 'Poss'] == 'RPI')
  {
    Overall_table[i, 'PossID'] <- counterrpi
  }
  #when possession of i is different from possession of i+1 and possesion is opponent teams
  if (Overall_table[i, 'Poss'] != Overall_table[i+1, 'Poss'] & (Overall_table[i, 'Poss'] == 'Colgate' | Overall_table[i, 'Poss'] == 'Qpac' | Overall_table[i, 'Poss'] == 'Harvard' | Overall_table[i, 'Poss'] == 'Dartmouth'))
  {
    Overall_table[i, 'PossID'] <- counteroppo
    counteroppo <- counteroppo +1
  }
  #when possession of i is the same as possession of i+1 and possesion is opponent teams
  if (Overall_table[i, 'Poss'] == Overall_table[i+1, 'Poss'] & (Overall_table[i, 'Poss'] == 'Colgate' | Overall_table[i, 'Poss'] == 'Qpac' | Overall_table[i, 'Poss'] == 'Harvard' | Overall_table[i, 'Poss'] == 'Dartmouth'))
  {
    Overall_table[i, 'PossID'] <- counteroppo
  }
}
