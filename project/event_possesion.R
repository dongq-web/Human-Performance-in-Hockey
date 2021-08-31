#This is a code to read into the 12 files from 12 periods, sort them by time and combine them into one file
#I separate them into two different codes because it is too long

#read in the data from the period one of colgate game
c1 <- read.csv('possesion_event_c1.csv', fileEncoding="UTF-8-BOM")
#sort the table by time
c1_table <- c1[order(c1$Time),]
Time = c1_table$Time
#fill in all the 'Poss' attributes by the 'Poss' in front of it
#'Poss' means possesion
for (i in (3:length(Time)))
{
  if (c1_table[i, 'Poss'] == '')
  {
    c1_table[i, 'Poss'] = c1_table[i-1, "Poss"]
  }
}
#create game and perios columns
Game <- matrix(1, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(1, length(Time), 1)
colnames(Period) <-  'Period'
#combine the game column, period column and the table I read in
c1_table <- cbind.data.frame(Game, Period, c1_table)

#repeat the process for period two of colgate game
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
Game <- matrix(1, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(2, length(Time), 1)
colnames(Period) <-  'Period'
c2_table <- cbind.data.frame(Game, Period, c2_table)

#repeat the process for period three of colgate game
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
Game <- matrix(1, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(3, length(Time), 1)
colnames(Period) <-  'Period'
c3_table <- cbind.data.frame(Game, Period, c3_table)

#repeat the process for period one of Quinnipiac game
q1 <- read.csv('possesion_event_q1.csv', fileEncoding="UTF-8-BOM")
q1_table <- q1[order(q1$Time),]
Time = q1_table$Time
for (i in (3:length(Time)))
{
  if (q1_table[i, 'Poss'] == '')
  {
    q1_table[i, 'Poss'] = q1_table[i-1, "Poss"]
  }
}
Game <- matrix(2, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(1, length(Time), 1)
colnames(Period) <-  'Period'
q1_table <- cbind.data.frame(Game, Period, q1_table)

#repeat the process for period two of Quinnipiac game
q2 <- read.csv('possesion_event_q2.csv', fileEncoding="UTF-8-BOM")
q2_table <- q2[order(q2$Time),]
Time = q2_table$Time
for (i in (3:length(Time)))
{
  if (q2_table[i, 'Poss'] == '')
  {
    q2_table[i, 'Poss'] = q2_table[i-1, "Poss"]
  }
}
Game <- matrix(2, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(2, length(Time), 1)
colnames(Period) <-  'Period'
q2_table <- cbind.data.frame(Game, Period, q2_table)

#repeat the process for period three of Quinnipiac game
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
Game <- matrix(2, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(3, length(Time), 1)
colnames(Period) <-  'Period'
q3_table <- cbind.data.frame(Game, Period, q3_table)

#repeat the process for period one of Harvard game
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
Game <- matrix(3, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(1, length(Time), 1)
colnames(Period) <-  'Period'
h1_table <- cbind.data.frame(Game, Period, h1_table)

#repeat the process for period two of Harvard game
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
Game <- matrix(3, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(2, length(Time), 1)
colnames(Period) <-  'Period'
h2_table <- cbind.data.frame(Game, Period, h2_table)

#repeat the process for period three of Harvard game
h3 <- read.csv('possesion_event_h3.csv', fileEncoding="UTF-8-BOM")
h3_table <- h3[order(h3$Time),]
Time = h3_table$Time
for (i in (3:length(Time)))
{
  if (h3_table[i, 'Poss'] == '')
  {
    h3_table[i, 'Poss'] = h3_table[i-1, "Poss"]
  }
}
Game <- matrix(3, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(3, length(Time), 1)
colnames(Period) <-  'Period'
h3_table <- cbind.data.frame(Game, Period, h3_table)

#repeat the process for period one of Dartmouth game
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
Game <- matrix(4, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(1, length(Time), 1)
colnames(Period) <-  'Period'
d1_table <- cbind.data.frame(Game, Period, d1_table)

#repeat the process for period two of Dartmouth game
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
Game <- matrix(4, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(2, length(Time), 1)
colnames(Period) <-  'Period'
d2_table <- cbind.data.frame(Game, Period, d2_table)

#repeat the process for period three of Dartmouth game
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
Game <- matrix(4, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(3, length(Time), 1)
colnames(Period) <-  'Period'
d3_table <- cbind.data.frame(Game, Period, d3_table)

#combine all the tables together
Overall_table <- rbind.data.frame(c1_table, c2_table, c3_table, q1_table, q2_table, q3_table, h1_table, h2_table, h3_table, d1_table, d2_table, d3_table)

