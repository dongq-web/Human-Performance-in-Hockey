d1 <- read.csv('possesion_event_d1.csv', fileEncoding="UTF-8-BOM")
d1_table <- d1[order(d1$Time),]

Time = d1_table$Time
for (i in (2:length(Time)))
{
  if (d1_table[i, 'Poss'] == '')
  {
    d1_table[i, 'Poss'] = d1_table[i-1, "Poss"]
  }
}