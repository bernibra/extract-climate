
#Download WSL data if not there
download_climatic <- function(res=0.5, meanlat, meanlong){
  
  bioclim.data <- getData(name = "worldclim",
                          var = "bio",
                          res = res,
                          lat=meanlat,
                          lon=meanlong,
                          path = "../../data/raw/climatic-data/")

}

#Convert Lat and Lon to N and E
transform_coordinates <- function(lon, lat){

  cord.dec = SpatialPoints(cbind(lon, lat), proj4string=CRS("+proj=longlat"))

  swissgrid <- "+proj=somerc +init=world:CH1903"
  #Alternatively, you can use: swissgrid <- "+init=epsg:21781"

  cord.UTM <- spTransform(cord.dec, swissgrid)
  return(list(N=cord.UTM@coords[2], E=cord.UTM@coords[1]))

}

#Check if the site is in the Rechalp area
is.reshalp <- function(folder, lon, lat){

  # file <- paste(folder, "biovars/yearly/bio1_tmean1981_Rechalp_ngb5_mwconic.tif")
  file <- folder
  bioclim.data <- stack("../../competition-networks/data/raw/climatic-data/important-yearly-variables/bio12_p_8110.tif")
  crs(bioclim.data)<-"+proj=somerc +init=world:CH1903"
  
}

