###############################################
#
# script to tile uas images for deep learning
# image segmentation analysis
#
# MML 01/15/25
###############################################

rm(list = ls())

library(terra)


setwd("/Users/mloranty/Library/CloudStorage/GoogleDrive-mloranty@colgate.edu/My Drive/Documents/research/NSF_MCA/goffe_thesis_work/images")


# read rgb uas image
f <- rast("RU_CYN_TR1_FL015_RGB_clip.tif")

# split the image into 1024 x 1024 tiles
makeTiles(f, 1024, file = "RU_CYN_TR1_FL015_RGB_clip_tile_.tif", na.rm = T)


