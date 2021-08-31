q1 <- read.csv('possesion_event_q1.csv', fileEncoding="UTF-8-BOM")
q1_table <- q1[order(q1$Time),]

Time = q1_table$Time
for (i in (3:length(Time)))
{
  if (q1_table[i, 'Poss'] == '')
      {
        q1_table[i, 'Poss'] = q1_table[i-1, "Poss"]
      }
}
