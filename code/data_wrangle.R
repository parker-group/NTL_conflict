########################## ~Variable Construction~ ############################
library(forecast)
library(dplyr)

#### ntl_data_yem.csv ####

#NTL#
min(ntl_data_yem$ntl_mean, na.rm=T)
ntl_data_yem$ntl_mean_const <- ntl_data_yem$ntl_mean + 0.00001
ntl_data_yem$ntl_mean_const_log <- log(ntl_data_yem$ntl_mean_const)

ntl_data_yem$ntl_ratio <- ntl_data_yem$ntl_mean/ntl_data_yem$ntl_baseline
min(ntl_data_yem$ntl_ratio, na.rm=T)
ntl_data_yem$ntl_ratio_const <- ntl_data_yem$ntl_ratio + 0.00001
ntl_data_yem$ntl_ratio_const_log <- log(ntl_data_yem$ntl_ratio_const)

ntl_data_yem$recovery_ratio <- ntl_data_yem$ntl_mean/ntl_data_yem$ntl_nadir
ntl_data_yem$recovery_ratio_log <- log(ntl_data_yem$recovery_ratio)

#Percentage built#
ntl_data_yem$built_perc <- (ntl_data_yem$built_pixels/ntl_data_yem$total_pixels)*100
ntl_data_yem$built_perc_log <- log(ntl_data_yem$built_perc)

#Attacks#
ntl_data_yem$attacks_scaled <- scale(ntl_data_yem$attacks)
quantile(ntl_data_yem$attacks[ntl_data_yem$attacks > 0], probs=seq(0,1,.25))
ntl_data_yem$attacksCAT[ntl_data_yem$attacks == 0] <- "None"
ntl_data_yem$attacksCAT[ntl_data_yem$attacks > 0 & ntl_data_yem$attacks <= 4] <- "Low"
ntl_data_yem$attacksCAT[ntl_data_yem$attacks > 4 & ntl_data_yem$attacks <= 12] <- "Medium"
ntl_data_yem$attacksCAT[ntl_data_yem$attacks > 12 & ntl_data_yem$attacks <= 35] <- "High"
ntl_data_yem$attacksCAT[ntl_data_yem$attacks > 35] <- "Severe"
ntl_data_yem$attacksCAT <- factor(ntl_data_yem$attacksCAT, levels=c("None", "Low", "Medium", "High", "Severe"))
table(ntl_data_yem$attacksCAT)

#Population#
ntl_data_yem$pop_log <- log(ntl_data_yem$pop)

#Diesel#
ntl_data_yem$diesel_log <- log(ntl_data_yem$diesel)


#### ntl_data_ukr.csv ####
#Note that July and August 2024 mean NTL levels were used to aid initial interpolation
#of June 2024 values. These are not included in the data files as they were not 
#used in the analysis.

#NTL#
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Cherkasy"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Cherkasy"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Chernihiv"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Chernihiv"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Chernivtsi"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Chernivtsi"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Crimea"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Crimea"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Dnipropetrovsk"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Dnipropetrovsk"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Donetsk"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Donetsk"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Ivano-Frankivsk"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Ivano-Frankivsk"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Kharkiv"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Kharkiv"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Kherson"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Kherson"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Khmelnytskyi"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Khmelnytskyi"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Kirovograd"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Kirovograd"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Kyiv"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Kyiv"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Kyiv City"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Kyiv City"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Luhansk"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Luhansk"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Lviv"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Lviv"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Mykolaiv"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Mykolaiv"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Odesa"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Odesa"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Poltava"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Poltava"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Rivne"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Rivne"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Sevastopol'"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Sevastopol'"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Sumy"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Sumy"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Ternopil"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Ternopil"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Vinnytsia"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Vinnytsia"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Volyn"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Volyn"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Zakarpattia"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Zakarpattia"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Zaporizhia"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Zaporizhia"])
ntl_data_ukr$ntl_mean[ntl_data_ukr$oblast == "Zhytomyr"] <- 
  na.interp(ntl_data_ukr$ntl_mean_raw[ntl_data_ukr$oblast == "Zhytomyr"])

min(ntl_data_ukr$ntl_mean, na.rm=T)
ntl_data_ukr$ntl_mean_log <- log(ntl_data_ukr$ntl_mean)

ntl_data_ukr$ntl_ratio <- ntl_data_ukr$ntl_mean/ntl_data_ukr$ntl_baseline
min(ntl_data_ukr$ntl_ratio, na.rm=T)
ntl_data_ukr$ntl_ratio_log <- log(ntl_data_ukr$ntl_ratio)

ntl_data_ukr$recovery_ratio <- ntl_data_ukr$ntl_mean/ntl_data_ukr$ntl_nadir
ntl_data_ukr$recovery_ratio_log <- log(ntl_data_ukr$recovery_ratio)

#Percentage built#
ntl_data_ukr$built_perc <- (ntl_data_ukr$built_pixels/ntl_data_ukr$total_pixels)*100
ntl_data_ukr$built_perc_log <- log(ntl_data_ukr$built_perc)

#Attacks
quantile(ntl_data_ukr$attacks, probs=seq(0,1,.2))
ntl_data_ukr$attacksCAT[ntl_data_ukr$attacks == 0] <- "None"
ntl_data_ukr$attacksCAT[ntl_data_ukr$attacks > 0 & ntl_data_ukr$attacks <= 2] <- "Low"
ntl_data_ukr$attacksCAT[ntl_data_ukr$attacks > 2 & ntl_data_ukr$attacks <= 6] <- "Medium"
ntl_data_ukr$attacksCAT[ntl_data_ukr$attacks > 6 & ntl_data_ukr$attacks <= 117] <- "High"
ntl_data_ukr$attacksCAT[ntl_data_ukr$attacks > 117] <- "Severe"
ntl_data_ukr$attacksCAT <- factor(ntl_data_ukr$attacksCAT, levels=c("None", "Low", "Medium", "High", "Severe"))
table(ntl_data_ukr$attacksCAT)

#Population#
ntl_data_ukr$pop_log <- log(ntl_data_ukr$pop)


#### cholera.csv ####

#NTL#
quantile(cholera$ntl_mean, probs=seq(0,1,.2))
cholera$ntl_meanCAT <- NA
cholera$ntl_meanCAT[cholera$ntl_mean >= 0 & cholera$ntl_mean <= 0.006041048] <- "Severe"
cholera$ntl_meanCAT[cholera$ntl_mean > 0.006041048 & cholera$ntl_mean <= 0.014650501] <- "High"
cholera$ntl_meanCAT[cholera$ntl_mean > 0.014650501 & cholera$ntl_mean <= 0.030066867] <- "Medium"
cholera$ntl_meanCAT[cholera$ntl_mean > 0.030066867 & cholera$ntl_mean <= 0.085537692] <- "Intermediate"
cholera$ntl_meanCAT[cholera$ntl_mean > 0.085537692 & cholera$ntl_mean <= 5.904448290] <- "Low"
cholera$ntl_meanCAT <- factor(cholera$ntl_meanCAT, levels=c("Low", "Intermediate", "Medium", "High", "Severe"))
table(cholera$ntl_meanCAT)

quantile(cholera$ntl_ratio[cholera$ntl_ratio < 1], probs=seq(0,1,.2))
cholera$ntl_ratioCAT[cholera$ntl_ratio > 1] <- "Above"
cholera$ntl_ratioCAT[cholera$ntl_ratio >= 0.00000000 & cholera$ntl_ratio <= 0.08692913] <- "Severe"
cholera$ntl_ratioCAT[cholera$ntl_ratio > 0.08692913 & cholera$ntl_ratio <= 0.15750151] <- "High"
cholera$ntl_ratioCAT[cholera$ntl_ratio > 0.15750151 & cholera$ntl_ratio <= 0.31137026] <- "Medium"
cholera$ntl_ratioCAT[cholera$ntl_ratio > 0.31137026 & cholera$ntl_ratio <= 0.52626450] <- "Intermediate"
cholera$ntl_ratioCAT[cholera$ntl_ratio > 0.52626450 & cholera$ntl_ratio <= 0.99191548] <- "Low"
cholera$ntl_ratioCAT <- factor(cholera$ntl_ratioCAT, levels=c("Low", "Intermediate", "Medium", "High", "Severe", "Above"))
table(cholera$ntl_ratioCAT)

#Attacks#
quantile(cholera$attacks_3mo, probs=seq(0,1,.2))
cholera$attacks_3moCAT[cholera$attacks_3mo == 0] <- "Low"
cholera$attacks_3moCAT[cholera$attacks_3mo > 0 & cholera$attacks_3mo <= 4] <- "Intermediate"
cholera$attacks_3moCAT[cholera$attacks_3mo > 4 & cholera$attacks_3mo <= 18] <- "Medium"
cholera$attacks_3moCAT[cholera$attacks_3mo > 18 & cholera$attacks_3mo <= 75] <- "High"
cholera$attacks_3moCAT[cholera$attacks_3mo > 75] <- "Severe"
cholera$attacks_3moCAT <- factor(cholera$attacks_3moCAT, levels=c("Low", "Intermediate", "Medium", "High", "Severe"))
table(cholera$attacks_3moCAT)

#Population#
cholera$density <- cholera$pop/cholera$area
cholera$density_log <- log(cholera$density)

#Environmental variables#
cholera$precip_scale <- scale(cholera$precip)
cholera$surf_wat_scale <- scale(cholera$surf_wat)
cholera$temp_scale <- scale(cholera$temp)
cholera$ndvi_scale <- scale(cholera$ndvi)

#Economic principal component#
for_pca <- select(cholera, food, petrol, exch_rate)
data.pca <- prcomp(na.omit(for_pca), center = T, scale = T)
pc1 <- data.pca$x


#### cholera_reduced.csv ####
cholera_reduced <- subset(cholera, gov != "Raymah")
