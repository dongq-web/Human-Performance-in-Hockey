c1 <- read.csv('possesion_event_c1.csv', fileEncoding="UTF-8-BOM")
c1_table <- c1[order(c1$Time),]

Time = c1_table$Time
for (i in (3:length(Time)))
{
  if (c1_table[i, 'Poss'] == '')
  {
    c1_table[i, 'Poss'] = c1_table[i-1, "Poss"]
  }
}