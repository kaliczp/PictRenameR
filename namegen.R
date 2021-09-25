## A mappában
##  ls *G > masol.sh
## Fájlnevek beolvasása
filename <- scan("masolhoz.txt", character())
## Első adag számai
raw.name1 <- 551:899
form.name1 <- paste0("0",substr(raw.name1,1,2), "+", substr(raw.name1,3,3), "0.jpg")
## Hibás képek beírása
joform.name1 <- c(form.name1[1:188],
                  "Hibas73+90.jpg",
                  form.name1[189:270],
                  "Hibas82+10.jpg",
                  form.name1[271:length(form.name1)])
## Második adag -1, mert a 55+00 nincs benne -2 dupla az elsőből
raw.name2 <- seq.int(from = 1000, by = 1, length.out = length(filename)-1-length(joform.name1)-2)
## Plusz jel beleszuszakolása
form.name2 <- paste0(substr(raw.name2,1,3), "+", substr(raw.name2,4,4), "0.jpg")
## Hibás képek beírása
joform.name2 <- c(form.name2[1:8],
                  "Hibas100+9.jpg",
                  form.name2[9:90],
                  "Hibas109+0.jpg",
                  form.name2[91:length(form.name2)])
## A kettő összerakása
form.name <- c("055+00.jpg",joform.name2, joform.name1)
## Teszt mappába teszem!
write(paste0("ln -s ../",filename, " ",form.name), "link.sh")
## Copy
write(paste0("cp ",filename, " ../OK/",form.name), "copy.sh")
