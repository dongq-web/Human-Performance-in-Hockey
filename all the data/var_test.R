overall = read.csv('latency.csv', fileEncoding="UTF-8-BOM")
faceoff = overall$faceoff
shot_for = overall$shot_for
var.test(faceoff, shot_for)