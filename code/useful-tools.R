
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
  return(list(x=cord.UTM@coords[1], y=cord.UTM@coords[2]))

}

#Check if the site is in the Rechalp area
is.reshalp <- function(folder, lon, lat){

  NorthEeast <- transform_coordinates(lon=lon,lat=lat)
  
  file <- paste(folder, "biovars/yearly/bio1_tmean1981_Rechalp_ngb5_mwconic.tif", sep="")
  bioclim.data <- stack(file)
  crs(bioclim.data)<-"+proj=somerc +init=world:CH1903"

  if(is.na(extract(bioclim.data, data.frame(NorthEeast)))){
    return(FALSE)
  }else{
    return(TRUE)
  }
}

little.check.rechalp <- function(folder){

  lat_ <- seq(46, 47, length.out = 100)
  lon_<- seq(6, 9, length.out = 100)

  file <- paste(folder, "biovars/yearly/bio1_tmean1981_Rechalp_ngb5_mwconic.tif", sep="")
  bioclim.data <- stack(file)
  crs(bioclim.data)<-"+proj=somerc +init=world:CH1903"
  
  dat <- expand.grid(lat=lat_, lon=lon_)
  dat$value <- sapply(1:nrow(dat), function(x){
    NorthEeast <- transform_coordinates(lon=dat$lon[x], lat=dat$lat[x])
    return(!is.na(extract(bioclim.data, data.frame(NorthEeast))))
  })
  plot(dat$lon, dat$lat, col=as.integer(dat$value)+1, pch=20)
  
}
