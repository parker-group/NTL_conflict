## Yemen ----
yemen.ts <- ts(data = as.vector(yem_bfast$yemen), start = c(2012,1), end = c(2022, 3), frequency = 12)
yemen_bfast <- bfast(yemen.ts, h=0.15, season=c("harmonic"))
plot(yemen_bfast, type = "trend", main="Yemen") 
yemen_bfast

abyan.ts <- ts(data = as.vector(yem_bfast$abyan), start = c(2012,1), end = c(2022, 3), frequency = 12)
abyan_bfast <- bfast(abyan.ts, h=0.15, season=c("harmonic"))
plot(abyan_bfast, type = "trend", main="Abyan") 
abyan_bfast

aden.ts <- ts(data = as.vector(yem_bfast$aden), start = c(2012,1), end = c(2022, 3), frequency = 12)
aden_bfast <- bfast(aden.ts, h=0.15, season=c("harmonic"))
plot(aden_bfast, type = "trend", main="Aden") #AR: 39, bfast: 39 (38-40)
aden_bfast

bayda.ts <- ts(data = as.vector(yem_bfast$bayda), start = c(2012,1), end = c(2022, 3), frequency = 12)
bayda_bfast <- bfast(bayda.ts, h=0.15, season=c("harmonic"))
plot(bayda_bfast, type = "trend", main="Al-Bayda") #AR: 39, bfast: 39 (38-40)
bayda_bfast

dhale.ts <- ts(data = as.vector(yem_bfast$aldhale), start = c(2012,1), end = c(2022, 3), frequency = 12)
dhale_bfast <- bfast(dhale.ts, h=0.15, season=c("harmonic"))
plot(dhale_bfast, type = "trend", main="Al-Dhale") 
dhale_bfast

hudaydah.ts <- ts(data = as.vector(yem_bfast$hudaydah), start = c(2012,1), end = c(2022, 3), frequency = 12)
hudaydah_bfast <- bfast(hudaydah.ts, h=0.15, season=c("harmonic"))
plot(hudaydah_bfast,type = "trend", main="Hudaydah") #AR: 39, bfast: 39 (38-40)
hudaydah_bfast

jawf.ts <- ts(data = as.vector(yem_bfast$jawf), start = c(2012,1), end = c(2022, 3), frequency = 12)
jawf_bfast <- bfast(jawf.ts, h=0.10, season=c("harmonic"))
plot(jawf_bfast, type = "trend", main="Jawf") 
jawf_bfast

maharah.ts <- ts(data = as.vector(yem_bfast$maharah), start = c(2012,1), end = c(2022, 3), frequency = 12)
maharah_bfast <- bfast(maharah.ts, h=0.15, season=c("harmonic"))
plot(maharah_bfast, type = "trend", main="Maharah") 
maharah_bfast

mahwit.ts <- ts(data = as.vector(yem_bfast$mahwit), start = c(2012,1), end = c(2022, 3), frequency = 12)
mahwit_bfast <- bfast(mahwit.ts, h=0.10, season=c("harmonic"))
plot(mahwit_bfast, type = "trend", main="Mahwit") 
mahwit_bfast

amran.ts <- ts(data = as.vector(yem_bfast$amran), start = c(2012,1), end = c(2022, 3), frequency = 12)
amran_bfast <- bfast(amran.ts, h=0.15, season=c("harmonic"))
plot(amran_bfast, type = "trend", main="Amran") 
amran_bfast

dhamar.ts <- ts(data = as.vector(yem_bfast$dhamar), start = c(2012,1), end = c(2022, 3), frequency = 12)
dhamar_bfast <- bfast(dhamar.ts, h=0.15, season=c("harmonic"))
plot(dhamar_bfast, type = "trend", main="Dhamar") 
dhamar_bfast

hadramawt.ts <- ts(data = as.vector(yem_bfast$hadramawt), start = c(2012,1), end = c(2022, 3), frequency = 12)
hadramawt_bfast <- bfast(hadramawt.ts, h=0.15, season=c("harmonic"))
plot(hadramawt_bfast, type = "trend", main="Hadramawt") 
hadramawt_bfast

hajjah.ts <- ts(data = as.vector(yem_bfast$hajjah), start = c(2012,1), end = c(2022, 3), frequency = 12)
hajjah_bfast <- bfast(hajjah.ts, h=0.15, season=c("harmonic"))
plot(hajjah_bfast, type = "trend", main="Hajjah") 
hajjah_bfast

ibb.ts <- ts(data = as.vector(yem_bfast$ibb), start = c(2012,1), end = c(2022, 3), frequency = 12)
ibb_bfast <- bfast(ibb.ts, h=0.10, season=c("harmonic"))
plot(ibb_bfast, type = "trend", main="Ibb")
ibb_bfast

lahj.ts <- ts(data = as.vector(yem_bfast$lahj), start = c(2012,1), end = c(2022, 3), frequency = 12)
lahj_bfast <- bfast(lahj.ts, h=0.15, season=c("harmonic"))
plot(lahj_bfast, type = "trend", main="Lahj") 
lahj_bfast

marib.ts <- ts(data = as.vector(yem_bfast$marib), start = c(2012,1), end = c(2022, 3), frequency = 12)
marib_bfast <- bfast(marib.ts, h=0.15, season=c("harmonic"))
plot(marib_bfast, type = "trend", main="Marib") 
marib_bfast

raymah.ts <- ts(data = as.vector(yem_bfast$raymah), start = c(2012,1), end = c(2022, 3), frequency = 12)
raymah_bfast <- bfast(raymah.ts, h=0.15, season=c("harmonic"))
plot(raymah_bfast, type = "trend", main="Raymah") 
raymah_bfast

saada.ts <- ts(data = as.vector(yem_bfast$saada), start = c(2012,1), end = c(2022, 3), frequency = 12)
saada_bfast <- bfast(saada.ts, h=0.15, season=c("harmonic"))
plot(saada_bfast, type = "trend", main="Sa'ada")
saada_bfast

sanaaCity.ts <- ts(data = as.vector(yem_bfast$sanaaCity), start = c(2012,1), end = c(2022, 3), frequency = 12)
sanaaCity_bfast <- bfast(sanaaCity.ts, h=0.15, season=c("harmonic"))
plot(sanaaCity_bfast, type = "trend", main = "Sana'a City") 
sanaaCity_bfast

sanaa.ts <- ts(data = as.vector(yem_bfast$sanaa), start = c(2012,1), end = c(2022, 3), frequency = 12)
sanaa_bfast <- bfast(sanaa.ts, h=0.15, season=c("harmonic"))
plot(sanaa_bfast, type = "trend", main = "Sana'a") 
sanaa_bfast

shabwah.ts <- ts(data = as.vector(yem_bfast$shabwah), start = c(2012,1), end = c(2022, 3), frequency = 12)
shabwah_bfast <- bfast(shabwah.ts, h=0.15, season=c("harmonic"))
plot(shabwah_bfast, type = "trend", main="Shabwah")
shabwah_bfast

taizz.ts <- ts(data = as.vector(yem_bfast$taizz), start = c(2012,1), end = c(2022, 3), frequency = 12)
taizz_bfast <- bfast(taizz.ts, h=0.15, season=c("harmonic"))
plot(taizz_bfast, type = "trend", main="Taizz") 
taizz_bfast

## Ukraine ----
ukraine.ts <- ts(data = as.vector(ukr_bfast$ukraine), start = c(2019,1), end = c(2024, 6), frequency = 12)
ukraine_bfast <- bfast(ukraine.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(ukraine_bfast, type = "trend", main="Ukraine")
ukraine_bfast

cherkasy.ts <- ts(data = as.vector(ukr_bfast$cherkasy), start = c(2019,1), end = c(2024, 6), frequency = 12)
cherkasy_bfast <- bfast(cherkasy.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(cherkasy_bfast, type = "trend", main="Cherkasy")
cherkasy_bfast

chernihiv.ts <- ts(data = as.vector(ukr_bfast$chernihiv), start = c(2019,1), end = c(2024, 6), frequency = 12)
chernihiv_bfast <- bfast(chernihiv.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(chernihiv_bfast, type = "trend", main="Chernihiv") 
chernihiv_bfast

chernivtsi.ts <- ts(data = as.vector(ukr_bfast$chernivtsi), start = c(2019,1), end = c(2024, 7), frequency = 12)
chernivtsi_bfast <- bfast(chernivtsi.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(chernivtsi_bfast, type = "trend", main="Chernivtsi")
chernivtsi_bfast

crimea.ts <- ts(data = as.vector(ukr_bfast$crimea), start = c(2019,1), end = c(2024, 6), frequency = 12)
crimea_bfast <- bfast(crimea.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(crimea_bfast, type = "trend", main="Crimea")
crimea_bfast

dnipropetrovsk.ts <- ts(data = as.vector(ukr_bfast$dnipropetrovsk), start = c(2019,1), end = c(2024, 7), frequency = 12)
dnipropetrovsk_bfast <- bfast(dnipropetrovsk.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(dnipropetrovsk_bfast, type = "trend", main="Dnipropetrovsk")
dnipropetrovsk_bfast

donetsk.ts <- ts(data = as.vector(ukr_bfast$donetsk), start = c(2019,1), end = c(2024, 6), frequency = 12)
donetsk_bfast <- bfast(donetsk.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(donetsk_bfast, type = "trend", main="Donetsk")
donetsk_bfast

ivanoFrankivsk.ts <- ts(data = as.vector(ukr_bfast$ivanoFrankivsk), start = c(2019,1), end = c(2024, 7), frequency = 12)
ivanoFrankivsk_bfast <- bfast(ivanoFrankivsk.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(ivanoFrankivsk_bfast, type = "trend", main="Ivano-Frankivsk")
ivanoFrankivsk_bfast

kharkiv.ts <- ts(data = as.vector(ukr_bfast$kharkiv_naInterp3), start = c(2019,1), end = c(2024, 7), frequency = 12)
kharkiv_bfast <- bfast(kharkiv.ts, h=0.20, season=c("harmonic"), decomp="stlplus")
plot(kharkiv_bfast, type = "trend", main="Kharkiv")
kharkiv_bfast

kherson.ts <- ts(data = as.vector(ukr_bfast$kherson_naInterp3), start = c(2019,1), end = c(2024, 6), frequency = 12)
kherson_bfast <- bfast(kherson.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(kherson_bfast, type = "trend", main="Kherson")
kherson_bfast

khmelnytskyy.ts <- ts(data = as.vector(ukr_bfast$khmelnytskyy), start = c(2019,1), end = c(2024, 7), frequency = 12)
khmelnytskyy_bfast <- bfast(khmelnytskyy.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(khmelnytskyy_bfast, type = "trend", main="Khmelnytskyy")
khmelnytskyy_bfast

kyiv_city.ts <- ts(data = as.vector(ukr_bfast$kyivCity), start = c(2019,1), end = c(2024, 7), frequency = 12)
kyiv.city_bfast <- bfast(kyiv_city.ts, h=0.25, season=c("harmonic"), decomp="stlplus")
plot(kyiv.city_bfast, type = "trend", main="Kyiv City")
kyiv.city_bfast

kyiv.ts <- ts(data = as.vector(ukr_bfast$kyiv), start = c(2019,1), end = c(2024, 7), frequency = 12)
kyiv_bfast <- bfast(kyiv.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(kyiv_bfast, type = "trend", main="Kyiv")
kyiv_bfast

kirovohrad.ts <- ts(data = as.vector(ukr_bfast$kirovohrad), start = c(2019,1), end = c(2024, 7), frequency = 12)
kirovohrad_bfast <- bfast(kirovohrad.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(kirovohrad_bfast, type = "trend", main="Kirovohrad")
kirovohrad_bfast

lviv.ts <- ts(data = as.vector(ukr_bfast$lviv), start = c(2019,1), end = c(2024, 7), frequency = 12)
lviv_bfast <- bfast(lviv.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(lviv_bfast, type = "trend", main="Lviv")
lviv_bfast

luhansk.ts <- ts(data = as.vector(ukr_bfast$luhansk), start = c(2019,1), end = c(2024, 6), frequency = 12)
luhansk_bfast <- bfast(luhansk.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(luhansk_bfast, type = "trend", main="Luhansk")
luhansk_bfast

mykolayiv.ts <- ts(data = as.vector(ukr_bfast$mykolayiv), start = c(2019,1), end = c(2024,7), frequency = 12)
mykolayiv_bfast <- bfast(mykolayiv.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(mykolayiv_bfast, type = "trend", main="Mykolayiv")
mykolayiv_bfast

odesa.ts <- ts(data = as.vector(ukr_bfast$odesa), start = c(2019,1), end = c(2024, 6), frequency = 12)
odesa_bfast <- bfast(odesa.ts, h=0.15, season=c("harmonic"), decomp = "stlplus")
plot(odesa_bfast, type = "trend", main="Odesa")
odesa_bfast

poltava.ts <- ts(data = as.vector(ukr_bfast$poltava), start = c(2019,1), end = c(2024, 7), frequency = 12)
poltava_bfast <- bfast(poltava.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(poltava_bfast, type = "trend", main="Poltava")
poltava_bfast

rivne.ts <- ts(data = as.vector(ukr_bfast$rivne), start = c(2019,1), end = c(2024, 6), frequency = 12)
rivne_bfast <- bfast(rivne.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(rivne_bfast, type = "trend", main="Rivne")
rivne_bfast

sevastopol.ts <- ts(data = as.vector(ukr_bfast$sevastopol), start = c(2019,1), end = c(2024, 6), frequency = 12)
sevastopol_bfast <- bfast(sevastopol.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(sevastopol_bfast, type = "trend", main="Sevastopol")
sevastopol_bfast

sumy.ts <- ts(data = as.vector(ukr_bfast$sumy), start = c(2019,1), end = c(2024, 6), frequency = 12)
sumy_bfast <- bfast(sumy.ts, h=0.05, season=c("harmonic"), decomp="stlplus")
plot(sumy_bfast, type = "trend", main="Sumy")
sumy_bfast

ternopil.ts <- ts(data = as.vector(ukr_bfast$ternopil), start = c(2019,1), end = c(2024, 7), frequency = 12)
ternopil_bfast <- bfast(ternopil.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(ternopil_bfast, type = "trend", main="Ternopil")
ternopil_bfast

vinnytsya.ts <- ts(data = as.vector(ukr_bfast$vinnytsya), start = c(2019,1), end = c(2024, 6), frequency = 12)
vinnytsya_bfast <- bfast(vinnytsya.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(vinnytsya_bfast, type = "trend", main="Vinnytsya")
vinnytsya_bfast

volyn.ts <- ts(data = as.vector(ukr_bfast$volyn), start = c(2019,1), end = c(2024, 6), frequency = 12)
volyn_bfast <- bfast(volyn.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(volyn_bfast, type = "trend", main="Volyn")
volyn_bfast

zakarpattia.ts <- ts(data = as.vector(ukr_bfast$zakarpattia), start = c(2019,1), end = c(2024, 6), frequency = 12)
zakarpattia_bfast <- bfast(zakarpattia.ts, h=0.10, season=c("harmonic"), decomp="stlplus")
plot(zakarpattia_bfast, type = "trend", main="Zakarpattia")
zakarpattia_bfast

zaporizhzhya.ts <- ts(data = as.vector(ukr_bfast$zaporizhzhya), start = c(2019,1), end = c(2024, 7), frequency = 12)
zaporizhzhya_bfast <- bfast(zaporizhzhya.ts, h=0.15, season=c("harmonic"), decomp="stlplus")
plot(zaporizhzhya_bfast, type = "trend", main="Zaporizhzhya")
zaporizhzhya_bfast

zhytomyr.ts <- ts(data = as.vector(ukr_bfast$zhytomyr), start = c(2019,1), end = c(2024, 6), frequency = 12)
zhytomyr_bfast <- bfast(zhytomyr.ts, h=0.05, season=c("harmonic"), decomp="stlplus")
plot(zhytomyr_bfast, type = "trend", main="Zhytomyr")
zhytomyr_bfast
