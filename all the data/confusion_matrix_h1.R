#I created four files that include the media in media out time for rpi and opponent possession
#and also time for shot for and shot against
#can recreate the files from the original files that Noah has
rpi <- read.csv('possesion_event_h1_rpi.csv', fileEncoding="UTF-8-BOM")
rpia <- rpi$RPIA
rpib <- rpi$RPIB
oppo <- read.csv('possesion_event_h1_oppo.csv', fileEncoding="UTF-8-BOM")
oppoa <- oppo$OPPOA
oppob <- oppo$OPPOB
shot_for <- read.csv('possesion_event_h1_for.csv', fileEncoding="UTF-8-BOM")
shot_for <- shot_for$Shot_for
shot_against <- read.csv('possesion_event_h1_against.csv', fileEncoding="UTF-8-BOM")
shot_against <- shot_against$Shot_against

#count how many shot for happens in rpi possession
#because shot for means rpi take the shot, so it should be rpi possession
rpi_shot <- 0
for (i in (1:length(shot_for)))
{
  for ( j in (1:length(rpia)))
  {
    if (rpia[j] < shot_for[i] && rpib[j] > shot_for[i])
    {
      rpi_shot <- rpi_shot +1
      break
    }
  }
}
oppo_shot <- 0
for (i in (1:length(shot_against)))
{
  for ( j in (1:length(oppoa)))
  {
    if (oppoa[j] < shot_against[i] && oppob[j] > shot_against[i])
    {
      oppo_shot <- oppo_shot +1
      break
    }
  }
}

rpi_shot
oppo_shot