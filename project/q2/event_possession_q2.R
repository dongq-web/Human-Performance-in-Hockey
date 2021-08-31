q2 <- read.csv('possesion_event_q2.csv', fileEncoding="UTF-8-BOM")
q2_table <- q2[order(q2$Time),]

Time = q2_table$Time
for (i in (3:length(Time)))
{
  if (q2_table[i, 'Poss'] == '')
  {
    q2_table[i, 'Poss'] = q2_table[i-1, "Poss"]
  }
}
