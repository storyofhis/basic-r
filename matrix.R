1:20 # get the generate number start from 1 to 20
bil <- 1:20

# matrix
matriks.bil <- matrix(bil)
matriks.bil.row <- matrix(bil, nrow = 4)
matriks.bil.row.byrow <- matrix(bil, byrow = T ,nrow = 4)
matriks.bil.col <- matrix(bil, ncol = 4)

# sample saham
TLKM <- c(3000, 3100, 3050, 3020, 3200)
KLBF <- c(324, 343, 300, 321, 355)

saham <- c(TLKM, KLBF)
saham.matriks <- matrix(saham, byrow = T, nrow = 2)

hari <- c('Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat')
nama.saham <- c('TLKM', 'KLBF')

colnames(saham.matriks) <- hari
rownames(saham.matriks) <- nama.saham

BBCA <- c(1501, 1510, 1490, 1520, 1500)
saham.baru <- rbind(saham.matriks, BBCA) # add new row using rbind

colSums(saham.baru)
SUM.SAHAM <- colSums(saham.baru)
saham.baru <- rbind(saham.baru, SUM.SAHAM)

rowSums(saham.baru)
ROWSUM.SAHAM <- rowSums(saham.baru)
saham.baru <- cbind(saham.baru, ROWSUM.SAHAM)

# slicing and indexing
Rataan <- rowMeans(saham.baru[,c('Senin','Selasa','Rabu','Kamis','Jumat')])
saham.baru <- cbind(saham.baru, Rataan)

