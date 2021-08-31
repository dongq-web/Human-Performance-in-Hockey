c3 <- read.csv('possesion_event_c3.csv', fileEncoding="UTF-8-BOM")
c3_table <- c3[order(c3$Time),]

Time = c3_table$Time
for (i in (3:length(Time)))
{
  if (c3_table[i, 'Poss'] == '')
  {
    c3_table[i, 'Poss'] = c3_table[i-1, "Poss"]
  }
}