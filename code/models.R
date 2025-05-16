################################## ~ Models ~ ##################################
library(mgcv)

#### NTL and aerial attacks ####
yem_ratio.gam <- gam(ntl_ratio_const_log ~ attacks + s(mos, bs="cc",k=-1) + 
                       s(pop_log,k=-1) + s(built_perc_log,k=-1) + diesel_log + 
                       s(lon,lat,bs="sos",k=15),family=gaussian, select=T, 
                     gamma=1.5, data=ntl_data_yem, methods="REML")

yem_ratio2.gam <- gam(ntl_ratio_const_log ~ attacks_scaled + s(mos, bs="cc",k=-1) + 
                        s(pop_log,k=-1) + s(built_perc_log,k=-1) + diesel_log + 
                        s(lon,lat,bs="sos",k=15),family=gaussian, select=T, 
                      gamma=1.5, data=ntl_data_yem, methods="REML")

yem_mean.gam <- gam(ntl_mean_const_log ~ attacks + s(mos,bs="cc",k=-1) + 
                      s(pop_log,k=-1) + s(built_perc_log,k=-1) + diesel_log + 
                      s(lon,lat,bs="sos",k=15),family=gaussian, select=T, 
                    gamma=1.5, data=ntl_data_yem, methods="REML")

yem_mean2.gam <- gam(ntl_mean_const_log ~ attacks_scaled + s(mos,bs="cc",k=-1) + 
                      s(pop_log,k=-1) + s(built_perc_log,k=-1) + diesel_log + 
                      s(lon,lat,bs="sos",k=15),family=gaussian, select=T, 
                    gamma=1.5, data=ntl_data_yem, methods="REML")

ukr_ratio.gam <- gam(ntl_ratio_log ~ attacksCAT + s(mos,bs="cc",k=-1) + 
                       s(built_perc_log,k=-1) + s(lon,lat,bs="sos",k=25), 
                     family=gaussian, select=T, gamma=1.5, data=ntl_data_ukr, 
                     methods="REML")

ukr_mean.gam <- gam(ntl_mean_log ~ attacksCAT + s(mos,bs="cc", k=-1) + 
                      s(built_perc_log,k=-1) + s(lon,lat,bs="sos",k=25), 
                    family=gaussian, select=T, gamma=1.5, data=ntl_data_ukr, 
                    methods="REML")


#### Population and NTL ####
# Note that the model for Yemen is automatically dropping data from Raymah, as 
# its two-month rolling minimum was zero and therefore the recovery ratio could
# not be calculated
yem_pop.gam <- gam(pop ~ s(mos, bs="cc",k=-1) + s(built_perc_log,k=-1) + 
                     s(ntl_mean_const_log, k=-1) + s(recovery_ratio_log,k=-1) + 
                     attacksCAT + s(lon,lat,bs="sos",k=15), family = gaussian, 
                   select=T, gamma=1.5, data=ntl_data_yem, method="REML")

ukr_pop.gam <- gam(pop ~ s(mos, bs="cc",k=-1) + s(ntl_mean_log,k=-1) + 
                     s(recovery_ratio_log,k=-1) + attacksCAT + 
                     s(lon,lat,bs="sos",k=24), family = gaussian, select=T, 
                   gamma=1.5, data=ntl_data_ukr, method="REML")


#### Cholera case study ####
original.gam <- gam(case ~ s(week, k=-1) + s(density_log, k=-1) + precip_scale + 
                      attacks_3moCAT + ndvi_scale + surf_wat_scale + temp_scale + 
                      s(econ_pc,k=-1) + s(lon,lat,bs="sos",k=15), family = nb,
                    gamma=1.5, data=cholera, method="REML")

original_recov.gam <- gam(case ~ s(week,bs="cc", k=-1) + s(density_log, k=-1) + 
                            precip_scale + attacks_3moCAT + ndvi_scale + 
                            surf_wat_scale + temp_scale + s(econ_pc,k=-1) + 
                            s(mo_since_nadir,recovery_ratio) + s(lon,lat,bs="sos",k=15), 
                          family = nb, gamma=1.5, select = T, 
                          data=cholera_reduced, method="REML")

ntl_recov.gam <- gam(case ~ s(week,bs="cc", k=-1) + s(density_log, k=-1) + 
                       precip_scale + ntl_meanCAT + ndvi_scale + surf_wat_scale + 
                       temp_scale + s(econ_pc,k=-1) + s(mo_since_nadir,recovery_ratio) +  
                       s(lon,lat,bs="sos",k=15), family = nb, gamma=1.5, select=T,
                     data=cholera_reduced, method="REML")
