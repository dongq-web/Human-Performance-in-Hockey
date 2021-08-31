d3 <- read.csv('possesion_event_d3.csv', fileEncoding="UTF-8-BOM")
d3_table <- d3[order(d3$Time),]

Time = d3_table$Time
for (i in (3:length(Time)))
{
  if (d3_table[i, 'Poss'] == '')
  {
    d3_table[i, 'Poss'] = d3_table[i-1, "Poss"]
  }
}