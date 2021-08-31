time <- read.csv('possesion_event.csv', fileEncoding="UTF-8-BOM")
rpia <- time$RPIA
rpib <- time$RPIB
oppoa <- time$OPPOA
oppob <- time$OPPOB
shot_for <- time$Shot_for
shot_against <- time$Shot_Against

rpi_shot = 0
for (i in (1:length(rpia)))
{
  tempa <- strptime(rpia[i], "%M:%s")
  tempb <- strptime(rpib[i], "%M:%s")
  for (j in (1: length(shot_for)))
  {
    tempshot <- strptime(shot_for[j], "%M:%s")
    if (tempa < tempshot && tempb > tempshot)
    {
      rpi_shot <- rpi_shot + 1
    }
  }
}
rpi_shot





