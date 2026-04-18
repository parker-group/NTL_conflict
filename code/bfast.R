## Ukraine ----
ukraine.ts <- ts(data = as.vector(ukr_bfast$ukraine), start = c(2019,1), end = c(2024, 6), frequency = 12)
ukraine_bfast <- bfast(ukraine.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(ukraine_bfast, type = "trend", main="Ukraine")
ukraine_bfast
cpt.meanvar(ukraine.ts)

cherkasy.ts <- ts(data = as.vector(ukr_bfast$cherkasy), start = c(2019,1), end = c(2024, 6), frequency = 12)
cherkasy_bfast <- bfast(cherkasy.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(cherkasy_bfast, type = "trend", main="Cherkasy")
cherkasy_bfast
plot(cpt.meanvar(cherkasy.ts))

chernihiv.ts <- ts(data = as.vector(ukr_bfast$chernihiv), start = c(2019,1), end = c(2024, 6), frequency = 12)
chernihiv_bfast <- bfast(chernihiv.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(chernihiv_bfast, type = "trend", main="Chernihiv") 
chernihiv_bfast
cpt.meanvar(chernihiv.ts)

chernivtsi.ts <- ts(data = as.vector(ukr_bfast$chernivtsi), start = c(2019,1), end = c(2024, 7), frequency = 12)
chernivtsi_bfast <- bfast(chernivtsi.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(chernivtsi_bfast, type = "trend", main="Chernivtsi")
chernivtsi_bfast
cpt.meanvar(chernivtsi.ts)

crimea.ts <- ts(data = as.vector(ukr_bfast$crimea), start = c(2019,1), end = c(2024, 6), frequency = 12)
crimea_bfast <- bfast(crimea.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(crimea_bfast, type = "trend", main="Crimea")
crimea_bfast
cpt.meanvar(crimea.ts)

dnipropetrovsk.ts <- ts(data = as.vector(ukr_bfast$dnipropetrovsk), start = c(2019,1), end = c(2024, 7), frequency = 12)
dnipropetrovsk_bfast <- bfast(dnipropetrovsk.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(dnipropetrovsk_bfast, type = "trend", main="Dnipropetrovsk")
dnipropetrovsk_bfast
cpt.meanvar(dnipropetrovsk.ts)

donetsk.ts <- ts(data = as.vector(ukr_bfast$donetsk), start = c(2019,1), end = c(2024, 7), frequency = 12)
donetsk_bfast <- bfast(donetsk.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(donetsk_bfast, type = "trend", main="Donetsk")
donetsk_bfast
cpt.meanvar(donetsk.ts)

ivanoFrankivsk.ts <- ts(data = as.vector(ukr_bfast$ivanoFrankivsk), start = c(2019,1), end = c(2024, 7), frequency = 12)
ivanoFrankivsk_bfast <- bfast(ivanoFrankivsk.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(ivanoFrankivsk_bfast, type = "trend", main="Ivano-Frankivsk")
ivanoFrankivsk_bfast
cpt.meanvar(ivanoFrankivsk.ts) -----

kharkiv.ts <- ts(data = as.vector(ukr_bfast$kharkiv_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
kharkiv_bfast <- bfast(kharkiv.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(kharkiv_bfast, type = "trend", main="Kharkiv")
kharkiv_bfast
cpt.meanvar(kharkiv.ts)

kherson.ts <- ts(data = as.vector(ukr_bfast$kherson_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
kherson_bfast <- bfast(kherson.ts, h=0.20, season=c("harmonic"), decomp="stlplus")
plot(kherson_bfast, type = "trend", main="Kherson")
kherson_bfast
cpt.meanvar(kherson.ts)

khmelnytskyy.ts <- ts(data = as.vector(ukr_bfast$khmelnytskyy_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
khmelnytskyy_bfast <- bfast(khmelnytskyy.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(khmelnytskyy_bfast, type = "trend", main="Khmelnytskyy")
khmelnytskyy_bfast
cpt.meanvar(khmelnytskyy.ts)

kiev_city.ts <- ts(data = as.vector(ukr_bfast$kievCity_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
kiev.city_bfast <- bfast(kiev_city.ts, h=0.25, season=c("harmonic"), decomp="stlplus")
plot(kiev.city_bfast, type = "trend", main="Kiev City")
kiev.city_bfast
cpt.meanvar(kiev_city.ts)

kiev.ts <- ts(data = as.vector(ukr_bfast$kiev_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
kiev_bfast <- bfast(kiev.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(kiev_bfast, type = "trend", main="Kiev")
kiev_bfast
cpt.meanvar(kiev.ts)

kirovohrad.ts <- ts(data = as.vector(ukr_bfast$kirovohrad_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
kirovohrad_bfast <- bfast(kirovohrad.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(kirovohrad_bfast, type = "trend", main="Kirovohrad")
kirovohrad_bfast
cpt.meanvar(kirovohrad.ts)

lviv.ts <- ts(data = as.vector(ukr_bfast$lviv_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
lviv_bfast <- bfast(lviv.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(lviv_bfast, type = "trend", main="Lviv")
lviv_bfast
cpt.meanvar(lviv.ts)

luhansk.ts <- ts(data = as.vector(ukr_bfast$luhansk_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
luhansk_bfast <- bfast(luhansk.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(luhansk_bfast, type = "trend", main="Luhansk")
luhansk_bfast
cpt.meanvar(luhansk.ts)

mykolayiv.ts <- ts(data = as.vector(ukr_bfast$mykolayiv_naInterp3), start = c(2019,1), end = c(2024,7), frequency = 12)
mykolayiv_bfast <- bfast(mykolayiv.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(mykolayiv_bfast, type = "trend", main="Mykolayiv")
mykolayiv_bfast
cpt.meanvar(mykolayiv.ts, method = "AMOC")

odesa.ts <- ts(data = as.vector(ukr_bfast$odesa_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
odesa_bfast <- bfast(odesa.ts, h=0.15, season=c("harmonic"), decomp = "stlplus")
plot(odesa_bfast, type = "trend", main="Odesa")
odesa_bfast
cpt.meanvar(odesa.ts)

poltava.ts <- ts(data = as.vector(ukr_bfast$poltava_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
poltava_bfast <- bfast(poltava.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(poltava_bfast, type = "trend", main="Poltava")
poltava_bfast
cpt.meanvar(poltava.ts)

rivne.ts <- ts(data = as.vector(ukr_bfast$rivne_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
rivne_bfast <- bfast(rivne.ts, h=0.12, season=c("harmonic"), decomp="stlplus")
plot(rivne_bfast, type = "trend", main="Rivne")
rivne_bfast
cpt.meanvar(rivne.ts)

sevastopol.ts <- ts(data = as.vector(ukr_bfast$sevastopol_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
sevastopol_bfast <- bfast(sevastopol.ts, h=0.20, season=c("harmonic"), decomp="stlplus")
plot(sevastopol_bfast, type = "trend", main="Sevastopol")
sevastopol_bfast
cpt.meanvar(sevastopol.ts)

sumy.ts <- ts(data = as.vector(ukr_bfast$sumy_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
sumy_bfast <- bfast(sumy.ts, h=0.05, season=c("harmonic"), decomp="stlplus")
plot(sumy_bfast, type = "trend", main="Sumy")
sumy_bfast
cpt.meanvar(sumy.ts)

ternopil.ts <- ts(data = as.vector(ukr_bfast$ternopil_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
ternopil_bfast <- bfast(ternopil.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(ternopil_bfast, type = "trend", main="Ternopil")
ternopil_bfast
cpt.meanvar(ternopil.ts)

vinnytsya.ts <- ts(data = as.vector(ukr_bfast$vinnytsya_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
vinnytsya_bfast <- bfast(vinnytsya.ts, h=0.20, season=c("harmonic"), decomp="stlplus")
plot(vinnytsya_bfast, type = "trend", main="Vinnytsya")
vinnytsya_bfast
cpt.meanvar(vinnytsya.ts)

volyn.ts <- ts(data = as.vector(ukr_bfast$volyn_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
volyn_bfast <- bfast(volyn.ts, h=0.05, season=c("harmonic"), decomp="stlplus")
plot(volyn_bfast, type = "trend", main="Volyn")
volyn_bfast
cpt.meanvar(volyn.ts)

zakarpattia.ts <- ts(data = as.vector(ukr_bfast$zakarpattia_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
zakarpattia_bfast <- bfast(zakarpattia.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(zakarpattia_bfast, type = "trend", main="Zakarpattia")
zakarpattia_bfast
cpt.meanvar(zakarpattia.ts)

zaporizhzhya.ts <- ts(data = as.vector(ukr_bfast$zaporizhzhya_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
zaporizhzhya_bfast <- bfast(zaporizhzhya.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(zaporizhzhya_bfast, type = "trend", main="Zaporizhzhya")
zaporizhzhya_bfast
cpt.meanvar(zaporizhzhya.ts)

zhytomyr.ts <- ts(data = as.vector(ukr_bfast$zhytomyr_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
zhytomyr_bfast <- bfast(zhytomyr.ts, h=0.05, season=c("harmonic"), decomp="stlplus")
plot(zhytomyr_bfast, type = "trend", main="Zhytomyr")
zhytomyr_bfast
cpt.meanvar(zhytomyr.ts)
