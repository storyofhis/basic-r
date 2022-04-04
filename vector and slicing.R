# vector 
satu <- c(1,2,3,4,5)
names(satu) <- c('A1','A2','A3','A4','A5')
satu
satu['A1']

dua <- c(10,20,30,40,50)
result <- satu * dua
result
result['A1']

sum(result)
max(result)
min(result)
mean(result)
median(result)

# slicing & indexing
angka <- dua
angka[1:3]
angka[c(1,3,5)]
filter.angka <- angka >= 30
angka[filter.angka]
