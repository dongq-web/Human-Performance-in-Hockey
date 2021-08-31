#I created a file dividing the lantencies of faceoff into four columns based on the games
#can find latencies of faceoff in 'latency.csv'
faceoff = read.csv('multiple_faceoff.csv', fileEncoding="UTF-8-BOM")
a = faceoff$colgate
b = faceoff$quin
c = faceoff$harvard
d = faceoff$dart
dati = c(a, b, c, d)
groups = factor(rep(letters[1:4], each = 10))
anova(lm(dati~groups))