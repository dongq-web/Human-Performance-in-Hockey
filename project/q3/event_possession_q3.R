q3 <- read.csv('possesion_event_q3.csv', fileEncoding="UTF-8-BOM")
q3_table <- q3[order(q3$Time),]

Time = q3_table$Time
for (i in (4:length(Time)))
{
  if (q3_table[i, 'Poss'] == '')
  {
    q3_table[i, 'Poss'] = q3_table[i-1, "Poss"]
  }
}

all_table <- rbind.data.frame(c1_table, c2_table, c3_table, q1_table, q2_table, q3_table, h1_table, h2_table, h3_table, d1_table, d2_table, d3_table)
