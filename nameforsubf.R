## A mappában
##  ls *G > masol.sh
## Fájlnevek beolvasása
filename <- scan("masol.txt", character())
## Eggyel kevesebb, mert 1000-nél már gond!
raw.name <- seq.int(from = 900, by = 1, length.out = length(filename)-1)
## Plusz jel beleszuszakolása
form.name <- paste0("0", substr(raw.name,1,2), "+", substr(raw.name,3,3), "0.jpg")
## Hibás kép jelölése
joform.name <- c(form.name[1:44],"Hiba094+40.jpg", form.name[45:length(form.name)])
## Teszt mappába teszem!
write(paste0("ln -s ../900_1000/",filename, " ",joform.name), "link.sh")
write(paste0("cp ",filename, " ../OK/",joform.name), "copy.sh")

