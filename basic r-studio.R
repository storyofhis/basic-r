# penghasilan satu kecamatan
# rnom(n sample, mean, std deviasi) 
penghasilan <- rnorm(1000, 3000000, 250000)
hist(penghasilan)

# memasukkan 1 orang penghasilan 7 juta
baru <- 7e+06
penghasilan.baru <- append(penghasilan, baru)

median(penghasilan)
median(penghasilan.baru)

mean(penghasilan)
mean(penghasilan.baru)
