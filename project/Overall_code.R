#####################################################################################
# IMPORT
# The following code is to import 12 seperate files (for each period in 4 games) and
# combine them into a table. Two new attributes are added: Game, Period. The Possession
# column is also cleaned and updated. 
#####################################################################################

# Game 1: RPI vs Colgate
# period one of colgate game
c1 <- read.csv('possesion_event_c1.csv', fileEncoding="UTF-8-BOM")

c1_table <- c1[order(c1$Time),] #sort the table by time
Time <-  c1_table$Time


# add a counter to count the number of NAs in front of each period
# and assign corresponding possession 
counter <- 0
for (i in 1:length(Time))
{
  if (c1_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    #save the first possession that is not NA
    temp_poss <- c1_table[i, 'Poss'] 
    break
  }
}

for (i in (1:(counter))) 
{
    c1_table[i, 'Poss'] <- temp_poss
}


# set the possesion equal the possesion in front of it
for (i in ((counter+1):length(Time)))
{
  if (c1_table[i, 'Poss'] == '')
  {
    c1_table[i, 'Poss'] = c1_table[i-1, "Poss"]
  }
}

Game <- matrix(1, length(Time), 1)
colnames(Game) <-  'Game'
Period <- matrix(1, length(Time), 1)
colnames(Period) <-  'Period'

c1_table <- cbind.data.frame(Game, Period, c1_table)

# period two of colgate game
c2 <- read.csv('possesion_event_c2.csv', fileEncoding="UTF-8-BOM")
c2_table <- c2[order(c2$Time),]
Time = c2_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (c2_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- c2_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  c2_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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

# period three of colgate game
c3 <- read.csv('possesion_event_c3.csv', fileEncoding="UTF-8-BOM")
c3_table <- c3[order(c3$Time),]
Time = c3_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (c3_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- c3_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  c3_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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



# Game 2: RPI vs Quinnipiac
# period one of Quinnipiac game
q1 <- read.csv('possesion_event_q1.csv', fileEncoding="UTF-8-BOM")
q1_table <- q1[order(q1$Time),]
Time = q1_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (q1_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- q1_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  q1_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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

# period two of Quinnipiac game
q2 <- read.csv('possesion_event_q2.csv', fileEncoding="UTF-8-BOM")
q2_table <- q2[order(q2$Time),]
Time = q2_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (q2_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- q2_table[i, 'Poss']
    break
  }
}
for (i in (1:(counter)))
{
  q2_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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

# period three of Quinnipiac game
q3 <- read.csv('possesion_event_q3.csv', fileEncoding="UTF-8-BOM")
q3_table <- q3[order(q3$Time),]
Time = q3_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (q3_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- q3_table[i, 'Poss']
    break
  }
}
for (i in (1:(counter)))
{
  q3_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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


# Game 3: RPI vs Harvard
# period one of Harvard game
h1 <- read.csv('possesion_event_h1.csv', fileEncoding="UTF-8-BOM")
h1_table <- h1[order(h1$Time),]
Time = h1_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (h1_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- h1_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  h1_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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

# period two of Harvard game
h2 <- read.csv('possesion_event_h2.csv', fileEncoding="UTF-8-BOM")
h2_table <- h2[order(h2$Time),]
Time = h2_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (h2_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- h2_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  h2_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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

# period three of Harvard game
h3 <- read.csv('possesion_event_h3.csv', fileEncoding="UTF-8-BOM")
h3_table <- h3[order(h3$Time),]
Time = h3_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (h3_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- h3_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  h3_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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


# Game 4: RPI vs Dartmouth
# period one of Dartmouth game
d1 <- read.csv('possesion_event_d1.csv', fileEncoding="UTF-8-BOM")
d1_table <- d1[order(d1$Time),]
Time = d1_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (d1_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- d1_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  d1_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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

# period two of Dartmouth game
d2 <- read.csv('possesion_event_d2.csv', fileEncoding="UTF-8-BOM")
d2_table <- d2[order(d2$Time),]
Time = d2_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (d2_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- d2_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  d2_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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

# period three of Dartmouth game
d3 <- read.csv('possesion_event_d3.csv', fileEncoding="UTF-8-BOM")
d3_table <- d3[order(d3$Time),]
Time = d3_table$Time
counter <- 0
for (i in 1:length(Time))
{
  if (d3_table[i, 'Poss'] == '')
  {
    counter <- counter + 1 
    next
  }
  else
  {
    temp_poss <- d3_table[i, 'Poss'] 
    break
  }
}
for (i in (1:(counter)))
{
  d3_table[i, 'Poss'] <- temp_poss
}
for (i in ((counter+1):length(Time)))
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


# combine all 12 tables together
Overall_table <- rbind.data.frame(c1_table, c2_table, c3_table, q1_table, q2_table, 
                                  q3_table, h1_table, h2_table, h3_table, d1_table,
                                  d2_table, d3_table)

#create EventPoss attributes
Time <- Overall_table$Time
EventPoss <- matrix(0, length(Time), 1)
colnames(EventPoss) <- 'EventPoss'
Overall_table <- cbind.data.frame(Overall_table, EventPoss)

#create two vector named rpievent and oppoevent, and check if the event is inside
rpievent <- c('Shot_for', 'Giveaway')
oppoevent <- c('Shot_against', 'Takeaway')
for (i in 1:length(Time))
{
  #if the event is rpi event
  if (Overall_table[i, 'Event'] %in% rpievent)
  {
    Overall_table[i, 'EventPoss'] <- 'RPI'
  }
  #if the event is opponent event
  if (Overall_table[i, 'Event'] %in% oppoevent)
  {
    if (Overall_table[i, 'Game'] == 1)
    {
      Overall_table[i, 'EventPoss'] <- 'Colgate'
      Overall_table[i, 'EventPoss']
    }
    if (Overall_table[i, 'Game'] == 2)
    {
      Overall_table[i, 'EventPoss'] <- 'Qpac'
    }
    if (Overall_table[i, 'Game'] == 3)
    {
      Overall_table[i, 'EventPoss'] <- 'Harvard'
    }
    if (Overall_table[i, 'Game'] == 4)
    {
      Overall_table[i, 'EventPoss'] <- 'Dartmouth'
    }
  }
}
for (i in 1:length(Time))
{
  if (Overall_table[i, 'EventPoss'] == 0)
  {
    Overall_table[i, 'EventPoss'] <- ''
  }
}

#####################################################################################
# BUILD
# The following code is to build essential attributes that are useful in the analysis
# process. Before building new attributes, data should be corrected if 'Poss' column
# and 'EventPoss' column are not consistent. Two new attributes (PossID and EventSeq)
# are created afterwards. 
#####################################################################################


# Step 1: Correcting data inconsistency

Time <- Overall_table$Time 
length <-  length(Time)

i=1
while (i < length)
{
  #if the event possesion and real possesion are different, and the event is not neutral event
  if (Overall_table[i, 'Poss'] != Overall_table[i, 'EventPoss'] & Overall_table[i, 'EventPoss'] != '')
  {
    #if the event should be switched with the event in front of it
    if (Overall_table[i, 'EventPoss'] == Overall_table[i-1, 'Poss'])
    {
      temp <- Overall_table[i, ]
      Overall_table[i, ] <-  Overall_table[i-1, ]
      Overall_table[i-1, ] <- temp
      Overall_table[i-1, 'Poss'] = Overall_table[i-1, 'EventPoss']
    }
    #if the event should be switched with the event right after it
    if (Overall_table[i, 'EventPoss'] == Overall_table[i+1, 'Poss'])
    {
      temp <- Overall_table[i, ]
      Overall_table[i, ] <-  Overall_table[i+1, ]
      Overall_table[i+1, ] <- temp
      Overall_table[i+1, 'Poss'] = Overall_table[i+1, 'EventPoss']
    }
    #if the event is in the middle, delete it
    else
    {
      Overall_table <- Overall_table[-i, ]
      i <- i-1
      length <- length -1
    }
  }
  i <- i+1
}



# Step 2: Building new attributes: PossID and EventSeq

#set the length as the length of Time
Time <- Overall_table$Time
# add a new column named PossID
PossID <- matrix(0, length(Time), 1)
colnames(PossID) <- 'PossID'
Overall_table <- cbind.data.frame(Overall_table, PossID)

#add two counters, when possesion of i is different from possesion of i+1, the counter will add one
counterrpi <- 1
counteroppo <- 1
for (i in 1:(length(Time)-1))
{
  #when possession of i is different from possession of i+1 and possesion is RPI
  if (Overall_table[i, 'Poss'] != Overall_table[i+1, 'Poss'] & Overall_table[i, 'Poss'] == 'RPI')
  {
    Overall_table[i, 'PossID'] <- counterrpi
    counterrpi <- counterrpi +1
  }
  #when possession of i is the same as possession of i+1 and possesion is RPI
  if (Overall_table[i, 'Poss'] == Overall_table[i+1, 'Poss'] & Overall_table[i, 'Poss'] == 'RPI')
  {
    Overall_table[i, 'PossID'] <- counterrpi
  }
  #when possession of i is different from possession of i+1 and possesion is opponent teams
  if (Overall_table[i, 'Poss'] != Overall_table[i+1, 'Poss'] & (Overall_table[i, 'Poss'] == 'Colgate' | Overall_table[i, 'Poss'] == 'Qpac' | Overall_table[i, 'Poss'] == 'Harvard' | Overall_table[i, 'Poss'] == 'Dartmouth'))
  {
    Overall_table[i, 'PossID'] <- counteroppo
    counteroppo <- counteroppo +1
  }
  #when possession of i is the same as possession of i+1 and possesion is opponent teams
  if (Overall_table[i, 'Poss'] == Overall_table[i+1, 'Poss'] & (Overall_table[i, 'Poss'] == 'Colgate' | Overall_table[i, 'Poss'] == 'Qpac' | Overall_table[i, 'Poss'] == 'Harvard' | Overall_table[i, 'Poss'] == 'Dartmouth'))
  {
    Overall_table[i, 'PossID'] <- counteroppo
  }
  #when the priod is changed, reset the counterrpi and counteroppo to 1
  if (Overall_table[i, 'Period'] != Overall_table[i+1, 'Period'] & Overall_table[i, 'Poss'] == 'RPI')
  {
    Overall_table[i, 'PossID'] <- counterrpi
    counterrpi <- 1
    counteroppo <- 1
  }
  #reset the counters when period changes
  if (Overall_table[i, 'Period'] != Overall_table[i+1, 'Period'] & (Overall_table[i, 'Poss'] == 'Colgate' | Overall_table[i, 'Poss'] == 'Qpac' | Overall_table[i, 'Poss'] == 'Harvard' | Overall_table[i, 'Poss'] == 'Dartmouth'))
  {
    Overall_table[i, 'PossID'] <- counteroppo
    counterrpi <- 1
    counteroppo <- 1
  }
}


#add a new column named EventSeq
Time <- Overall_table$Time
EventSeq <- matrix(0, length(Time), 1)
colnames(EventSeq) <- 'EventSeq'
Overall_table <- cbind.data.frame(Overall_table, EventSeq)

Seq <- 1
for (i in 1:(length(Time)-1))
{
  #add one to seq if the possesion of next event is still the same
  if (Overall_table[i, 'Poss'] != '' & Overall_table[i, 'Poss'] == Overall_table[i+1, 'Poss'])
  {
    Overall_table[i, 'EventSeq'] <- Seq
    Seq <- Seq +1
  }
  #reset seq to 1 if possesio of next event change
  if (Overall_table[i, 'Poss'] != '' & Overall_table[i, 'Poss'] != Overall_table[i+1, 'Poss'])
  {
    Overall_table[i, 'EventSeq'] <- Seq
    Seq <- 1
  }
}

#output the overall table 
write.csv(Overall_table,'Overall_table.csv', row.names = FALSE)