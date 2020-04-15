## Libraries
library(rgdal)
library(stringr)

## Local library
source("useful-tools.R")

## Global
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

# Find climatic variables for each site
for(idx in 1:nrow(sites)){

  # Define name of the output file
  filename <- paste(processed_folder, "sites", sites$Codes[idx], ".csv", sep = "")
  
}
