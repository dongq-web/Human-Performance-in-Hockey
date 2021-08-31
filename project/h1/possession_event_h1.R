h1 <- read.csv('possesion_event_h1.csv', fileEncoding="UTF-8-BOM")
h1_table <- h1[order(h1$Time),]

Time = h1_table$Time
for (i in (4:length(Time)))
{
  if (h1_table[i, 'Poss'] == '')
  {
    h1_table[i, 'Poss'] = h1_table[i-1, "Poss"]
  }
}