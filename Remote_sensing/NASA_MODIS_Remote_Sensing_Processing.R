rm(list=ls()) 
library(tidyverse)
library(reshape2)
library(raster)
library(scales)
library(rgdal)

####---GLCNMO---####
GLC_V1_1_1 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v1-master/gm_lc_v1_1_1.tif")
GLC_V1_1_2 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v1-master/gm_lc_v1_1_2.tif")
GLC_V1_2_1 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v1-master/gm_lc_v1_2_1.tif")
GLC_V1_2_2 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v1-master/gm_lc_v1_2_2.tif")

GLC_V2_1_1 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v2-master/gm_lc_v2_1_1.tif")
GLC_V2_1_2 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v2-master/gm_lc_v2_1_2.tif")
GLC_V2_2_1 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v2-master/gm_lc_v2_2_1.tif")
GLC_V2_2_2 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v2-master/gm_lc_v2_2_2.tif")

GLC_V3_1_1 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v3-master/gm_lc_v3_1_1.tif")
GLC_V3_1_2 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v3-master/gm_lc_v3_1_2.tif")
GLC_V3_2_1 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v3-master/gm_lc_v3_2_1.tif")
GLC_V3_2_2 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/gm_lc_v3-master/gm_lc_v3_2_2.tif")

GLC_V1 <- merge(GLC_V1_1_1, GLC_V1_1_2, GLC_V1_2_1, GLC_V1_2_2)
GLC_V2 <- merge(GLC_V2_1_1, GLC_V2_1_2, GLC_V2_2_1, GLC_V2_2_2)
GLC_V3 <- merge(GLC_V3_1_1, GLC_V3_1_2, GLC_V3_2_1, GLC_V3_2_2)

library(viridisLite)
cols <- c("red", "blue", "purple", "yellow", "green", "grey", "orange", rep("gray", 12), "cyan")
par(bg = 'white')
plot(GLC_V1, col=cols)
title(main="Global Land Cover 2003 (V1)", xlab="Longitude", ylab="Latitude", cex.main=2, cex.lab=1.5,cex.axis=1)

plot(GLC_V2, col=cols)
title(main="Global Land Cover 2008 (V2)", xlab="Longitude", ylab="Latitude", cex.main=2, cex.lab=1.5,cex.axis=1)

GLC_V3 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/GLC_V3.tif")
cols <- c("red", "darkcyan", "blue", rep("gray", 16), "white")

cols <- c("red", "darkcyan", "blue", "yellow", "purple", "cyan", "orange", rep("gray", 12), "white")
plot(GLC_V3, col=cols)
title(main="Global Land Cover 2013 (V3)", xlab="Longitude", ylab="Latitude", cex.main=2, cex.lab=1.5,cex.axis=1)

writeRaster(GLC_V1, "D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/GLC_V1.tif", format = "GTiff")
writeRaster(GLC_V2, "D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/GLC_V2.tif", format = "GTiff")
writeRaster(GLC_V3, "D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCNMO/GLC_V3.tif", format = "GTiff")


####---GLCC---####
GLC_BAT <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCC/gbbatsgeo20.tif")
GLC_VL <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLCC/gbvlgeo20.tif")
cols <- c("red", "blue", "purple", "yellow", "green", "grey", "orange", rep("gray", 15), "cyan")
plot(GLC_BAT, col=cols)

cols <- c("red", "blue", "purple", "yellow", "green", "grey", "orange", "cyan")
plot(GLC_VL, col=cols)

####---GLC2000---###
GLC2000 <- raster("D:/Zeus/ETH_zurich_MSc/ETHz_S3/Internship_Nick_Lab/Data/GLC2000/Tiff/glc2000_v1_1.tif")
cols <- c("red", "blue", "purple", "yellow", "green", "grey", "orange", rep("gray", 15), "cyan")
plot(GLC2000, col=cols)