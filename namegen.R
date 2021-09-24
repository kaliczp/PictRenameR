## A mappában
##  ls *G > masol.sh
## Fájlnevek beolvasása
filename <- scan("masolhoz.txt", character())
## Eggyel kevesebb, mert 1000-nél már gond!
raw.name1 <- 551:899
form.name1 <- paste0("0",substr(raw.name1,1,2), "+", substr(raw.name1,3,3), "0.jpg")
## Hibás képek beírása
joform.name1 <- c(form.name1[1:188],
                  "Hibas73+90.jpg",
                  form.name1[189:270],
                  "Hibas82+10.jpg",
                  form.name1[271:length(form.name1)])
## Második adag -1, mert a 55+00 nincs benne
raw.name2 <- seq.int(from = 1000, by = 1, length.out = length(filename)-1-length(joform.name1))
## Hibás képek beírása
## Plusz jel beleszuszakolása
form.name2 <- paste0(substr(raw.name2,1,3), "+", substr(raw.name2,4,4), "0.jpg")
## A kettő összerakása
form.name <- c("055+00.jpg",form.name2, joform.name1)
## Hibás kép jelölése
## joform.name <- c(form.name[1:44],"Hiba094+40.jpg", form.name[45:length(form.name)])
## Teszt mappába teszem!
write(paste0("ln -s ../",filename, " ",form.name), "link.sh")
