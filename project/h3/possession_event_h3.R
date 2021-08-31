h3 <- read.csv('possesion_event_h3.csv', fileEncoding="UTF-8-BOM")
h3_table <- h3[order(h3$Time),]

Time = h3_table$Time
for (i in (3:length(Time)))
{
  if (h3_table[i, 'Poss'] == '')
  {
    h3_table[i, 'Poss'] = h3_table[i-1, "Poss"]
  }
}