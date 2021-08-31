c2 <- read.csv('possesion_event_c2.csv', fileEncoding="UTF-8-BOM")
c2_table <- c2[order(c2$Time),]

Time = c2_table$Time
for (i in (3:length(Time)))
{
  if (c2_table[i, 'Poss'] == '')
  {
    c2_table[i, 'Poss'] = c2_table[i-1, "Poss"]
  }
}
