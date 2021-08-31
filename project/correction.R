#assign the length as the length of the Time attribute
Time <- temp_table$Time
length <-  length(Time)
#while loop to correct the data
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
    #if the event is in the middle
    else
    {
      Overall_table <- Overall_table[-i, ]
      i <- i-1
      length <- length -1
    }
  }
  i <- i+1
}

