d2 <- read.csv('possesion_event_d2.csv', fileEncoding="UTF-8-BOM")
d2_table <- d2[order(d2$Time),]

Time = d2_table$Time
for (i in (3:length(Time)))
{
  if (d2_table[i, 'Poss'] == '')
  {
    d2_table[i, 'Poss'] = d2_table[i-1, "Poss"]
  }
}