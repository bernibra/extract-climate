
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
  return(list(x=cord.UTM@coords[,1], y=cord.UTM@coords[,2]))

}

#Check if the site is in the Rechalp area
is.rechalp <- function(folder, lon, lat){

  NorthEeast <- transform_coordinates(lon=lon,lat=lat)
  
  file <- paste(folder, "biovars/yearly/bio1_tmean1981_Rechalp_ngb5_mwconic.tif", sep="")
  bioclim.data <- stack(file)
  crs(bioclim.data)<-"+proj=somerc +init=world:CH1903"

  return(!is.na(extract(bioclim.data, data.frame(NorthEeast))))
}

little.check.rechalp <- function(folder){

  lat_ <- seq(46, 46.8, length.out = 100)
  lon_<- seq(6.5, 8, length.out = 100)

  file <- paste(folder, "biovars/yearly/bio1_tmean1981_Rechalp_ngb5_mwconic.tif", sep="")
  bioclim.data <- stack(file)
  crs(bioclim.data)<-"+proj=somerc +init=world:CH1903"
  
  dat <- expand.grid(lat=lat_, lon=lon_)
  NorthEeast <- transform_coordinates(lon=dat$lon, lat=dat$lat)
  dat$value <- as.vector(!is.na(extract(bioclim.data, data.frame(NorthEeast))))
  plot(dat$lon, dat$lat, col=as.integer(dat$value)+2, pch=20)
  
}

start.rechalp.file <- function(filenames, rows, columns){
  data <- data.frame(matrix(NA, nrow=length(rows), ncol=length(columns)))
  colnames(data) <- columns
  rownames(data) <- rows
  for(filename in filenames){
    saveRDS(data, file = filename)
  }
}

write.value.data <- function(filenames, row, column, z){
  for(x in 1:length(filenames)){
    data <- readRDS(file = filenames[x])
    data[row, column] <- z[x]
    saveRDS(data, file = filenames[x])
  }
}

extract.rechalp <- function(folder, data){
  
  #Translate all coordinates
  NorthEeast <- transform_coordinates(lat=data$Lat_WGS84, lon=data$Long_WGS84)
  
  #Find out all variables that we need
  folder <- paste(rechalp_directory, "biovars/yearly/", sep="")
  files_ <- list.files(folder, pattern = "tif$", full.names = FALSE)
  files <- paste(folder, files_, sep="")
  info_files <- as.data.frame(do.call(rbind, strsplit(files_, split = "_")))
  info_files$filenames <- files_
  info_files$bioclim <- info_files$V1
  info_files$variable <- gsub("[[:digit:]]", "", info_files$V2)
  info_files$year <- gsub("[^[:digit:]]", "", info_files$V2)
  
  rows <- unique(info_files$year)
  columns <- unique(info_files$bioclim)
  
  #Start all files to store the data
  start.rechalp.file(data$filename, rows, columns)

  #Loop over all variables and years to extract the information
  pb <- txtProgressBar(min = 0, max = length(files), style = 3)
  for(i in 1:length(files)){
    bioclim.data <- stack(files[i])
    z <- extract(bioclim.data, data.frame(NorthEeast))
    setTxtProgressBar(pb, i)
    write.value.data(filenames = data$filename, row = as.character(info_files$year[i]), column = as.character(info_files$bioclim[i]), z = as.numeric(z))
  }
  close(pb)
}

extract.wsl <- function(){
  
}
