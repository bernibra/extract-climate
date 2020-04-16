## Libraries
library(rgdal)
library(stringr)
library(dismo)
library(raster)
library(dplyr)

## Local library
source("useful-tools.R")

## Global variables
rechalp_directory <- "/Volumes/GeoData_RECHALP/Climate/CHclim25/"
# rechalp_directory <- "../../competition-networks/data/raw/climatic-data/important-yearly-variables/bio1_tmean_8110.tif"
wsl_directory <- "../data/raw/climate-data/"
raw_sites <- "../data/raw/sites/sites.csv"
processed_folder <- "../data/processed/"

## Main
# Read sites locations
sites <- read.csv(raw_sites)
sites$Codes <- sapply(1:nrow(sites), function(x) paste("site", x, sep=''))

# Write sites' codes
write.csv(file = paste(processed_folder, "sites.csv",sep=""), x = data.frame(code=sites$Codes, site=str_trim(sites$Site), canton=sites$Canton))

# Check if you have access to the UNIL data
if(!dir.exists(rechalp_directory)){
  
  stop("You are not connected to the UNIL repository where the Rechalp data is located.")

}else{
  
  # Find climatic variables for each site
  for(idx in 1:nrow(sites)){
    
    # Define name of the output file
    filename <- paste(processed_folder, sites$Codes[idx], ".csv", sep = "")
    
    # Figure out whether or not the data is from the Rechalp region
    if(is.reshalp(folder = rechalp_directory, lon = sites$Long_WGS84[idx], lat = sites$Lat_WGS84[idx])){
      print("SOMEWHERE ELSE")
    }else{
      print("RESHALP")
    }
    
  }

}
