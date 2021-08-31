rpi <- read.csv('possesion_event_q1_rpi.csv', fileEncoding="UTF-8-BOM")
rpia <- rpi$RPIA
rpib <- rpi$RPIB
rpiduration <- rpi$duration
oppo <- read.csv('possesion_event_q1_oppo.csv', fileEncoding="UTF-8-BOM")
oppoa <- oppo$OPPOA
oppob <- oppo$OPPOB
oppoduration <- oppo$duration
shot_for <- read.csv('possesion_event_q1_for.csv', fileEncoding="UTF-8-BOM")
forchance <- matrix(shot_for$Chance)
shot_for <- shot_for$Shot_for
shot_against <- read.csv('possesion_event_q1_against.csv', fileEncoding="UTF-8-BOM")
againstchance <- matrix(shot_against$Chance)
shot_against <- shot_against$Shot_Against

formatrix <- matrix(nrow = 12, ncol = 2)
f <- 0
for (i in (1:length(shot_for)))
{
  for ( j in (1:length(rpia)))
  {
    if (rpia[j] < shot_for[i] && rpib[j] > shot_for[i])
    {
      f <- f + 1
      formatrix[f, 1] = rpiduration[j]
      if (forchance[i] == 'no')
      {
        formatrix[f, 2] = 1
      }
      if (forchance[i] == 'wide')
      {
        formatrix[f, 2] = 2
      }
      if (forchance[i] == 'yes')
      {
        formatrix[f, 2] = 3
      }
      if (forchance[i] == 'blocked')
      {
        formatrix[f, 2] = 4
      }
      if (forchance[i] == 'goal')
      {
        formatrix[f, 2] = 5
      }
    }
  }
}


againstmatrix <- matrix(nrow = 23, ncol = 2)
f <- 0
for (i in (1:length(shot_against)))
{
  for ( j in (1:length(oppoa)))
  {
    if (oppoa[j] < shot_against[i] && oppob[j] > shot_against[i])
    {
      f <- f + 1
      againstmatrix[f, 1] = oppoduration[j]
      if (againstchance[i] == 'no')
      {
        againstmatrix[f, 2] = 1
      }
      if (againstchance[i] == 'wide')
      {
        againstmatrix[f, 2] = 2
      }
      if (againstchance[i] == 'yes')
      {
        againstmatrix[f, 2] = 3
      }
      if (againstchance[i] == 'blocked')
      {
        againstmatrix[f, 2] = 4
      }
      if (againstchance[i] == 'goal')
      {
        againstmatrix[f, 2] = 5
      }
    }
  }
}

plot(againstmatrix[, 1], againstmatrix[, 2], xlab = 'time', ylab = 'chance')