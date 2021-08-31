rpi <- read.csv('possesion_event_d1_rpi_table.csv', fileEncoding="UTF-8-BOM")
oppo <- read.csv('possesion_event_d1_oppo_table.csv', fileEncoding="UTF-8-BOM")
shot_for <- read.csv('possesion_event_d1_for_table.csv', fileEncoding="UTF-8-BOM")
shot_against <- read.csv('possesion_event_d1_against_table.csv', fileEncoding="UTF-8-BOM")
time_table <- rbind.data.frame(rpi, oppo, shot_for, shot_against)
sorted_table <- time_table[order(time_table$Time),]

Time = sorted_table$Time
for (i in (1:length(Time)))
{
  if (is.na(sorted_table[i, 'Poss']))
  {
    sorted_table[i, 'Poss'] = sorted_table[i-1, "Poss"]
  }
}
