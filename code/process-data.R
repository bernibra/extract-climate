## Libraries
library(rgdal)
library(stringr)
library(dismo)
library(raster)
library(dplyr)
library(zip)

## Local library
source("useful-tools.R")

## Global variables
rechalp_directory <- "/Volumes/GeoData_RECHALP/Climate/CHclim25/"
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
  
  # Define name of the output file
  sites$filename <- paste(processed_folder, "sites/", sites$Codes, "/", sites$Codes, ".Rds", sep = "")
  
  # figure out which ones are in rechalp
  sites$rechalp <- as.vector(is.rechalp(folder = rechalp_directory, lon = sites$Long_WGS84, lat = sites$Lat_WGS84))

  # Extract climate variables
  extract.rechalp(folder = rechalp_directory, data = sites[sites$rechalp,], additional_folder = wsl_directory)
  extract.wsl(folder = wsl_directory, data = sites[!sites$rechalp,])

  # Write files 
  write.readme.rechalp(processed_folder, sites[sites$rechalp,])
  write.readme.wsl(processed_folder, sites[!sites$rechalp,])
  
}
