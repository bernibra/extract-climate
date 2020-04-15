

download_climatic <- function(res=0.5, meanlat, meanlong){
  bioclim.data <- getData(name = "worldclim",
                          var = "bio",
                          res = res,
                          lat=meanlat,
                          lon=meanlong,
                          path = "../../data/raw/climatic-data/")
}