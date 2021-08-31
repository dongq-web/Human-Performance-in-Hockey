#I created a file dividing the lantencies of shot for into four columns based on the games
#can find latencies of shot forf in 'latency.csv'
shotfor = read.csv('multiple_shotfor.csv', fileEncoding="UTF-8-BOM")
a = shotfor$colgate
b = shotfor$quin
c = shotfor$harvard
d = shotfor$dart
dati = c(a, b, c, d)
groups = factor(rep(letters[1:4], each = 10))
anova(lm(dati~groups))