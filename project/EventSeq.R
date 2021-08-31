#set length as the length of Time
Time <- Overall_table$Time
#add a new column named EventSeq
EventSeq <- matrix(0, length(Time), 1)
colnames(EventSeq) <- 'EventSeq'
Overall_table <- cbind.data.frame(Overall_table, EventSeq)

Seq <- 1
for (i in 1:(length(Time)-1))
{
  if (Overall_table[i, 'Poss'] == '')
  {
    Overall_table[i, 'EventSeq'] <- Seq
    Seq <- Seq +1
  }
  #add one to seq if the possesion of next event is still the same
  if (Overall_table[i, 'Poss'] != '' & Overall_table[i, 'Poss'] == Overall_table[i+1, 'Poss'])
  {
    Overall_table[i, 'EventSeq'] <- Seq
    Seq <- Seq +1
  }
  #reset seq to 1 if possesio of next event change
  if (Overall_table[i, 'Poss'] != '' & Overall_table[i, 'Poss'] != Overall_table[i+1, 'Poss'])
  {
    Overall_table[i, 'EventSeq'] <- Seq
    Seq <- 1
  }
}