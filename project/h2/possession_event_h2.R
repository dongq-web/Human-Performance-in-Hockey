h2 <- read.csv('possesion_event_h2.csv', fileEncoding="UTF-8-BOM")
h2_table <- h2[order(h2$Time),]

Time = h2_table$Time
for (i in (2:length(Time)))
{
  if (h2_table[i, 'Poss'] == '')
  {
    h2_table[i, 'Poss'] = h2_table[i-1, "Poss"]
  }
}
