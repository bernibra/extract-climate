# Climatic variables for a field site in the Rechalp area (Switzerland)
The columns represent commonly used [(19) bioclimatic variables](https://worldclim.org/data/bioclim.html) derived from the monthly temperature and rainfall values. For a description on how to calculte these, follow the section 'Bioclimatic parameters' from the [CHELSA Technical Specification manual](http://chelsa-climate.org/wp-admin/download-page/CHELSA_tech_specification.pdf). The rows, on the other hand, characterize the different datasets from which the data was extracted.

## UNIL data
The rows for years 1981--2015 as well as with id "8110" was provided by Antoine Guisan's research group.

From the UNIL description, one can read:
> The climatic data in this folder are derived from daily MeteoSwiss Grid-Data Products at 1km resolution for 1981--now (daily mean/max/min temperatures (TabsD/TminD/TmaxD), daily sum of precipitation (RhiresD) and daily relative sunshine duration (SrelD)), and daily potential incoming solar radiations (SradD) calculated at 25m for the Rechalp study area. Gridded climate change scenarios of temperature and precipitations at 0.02D (approx. 2.2 km) from the CH2011 initiative (reviewed in Zubler et al. 2014) were downscaled with bilinear interpolation at 25m and applied to calculated climatic layers (3 scenarios (A1B, A2 and the mitigation scenario RCP3PD) are available for 3 time slices (2020--2049, 2045--2074, and 2070--2099). Although for each scenario and time slice a range of estimates of change are available, only median estimates were used here. Bioclimatic variables calculation with function biovars from package dismo. For correspondence with worldclim data (biovars units x 100)

*Variables such as TabsY, TminY, TmaxY, Rhires, or gddY could also be provided. Contact Bernat Bramon Mora if that's the case for support.*

**If you use this data, you need to acknowledge the UNIL contribution and cite Antoine Guisan's group accordingly.**

## WorldClim data
The data in row with id 'worldclim' was downloaded from [https://www.worldclim.org/](https://www.worldclim.org/). The data was downloaded choosing a spatial resolution of 30 seconds. Check the specifications on how the data was generated in [https://www.worldclim.org/](https://www.worldclim.org/).

*Monthly, historical records and future projections could also be downloaded and provided for some of the variables. Contact Bernat Bramon Mora if support is needed.*

**If you use this data, you need to acknowledge the WorldClim contribution and cite accordingly.**

## CHELSA data
The data in row with id 'CHELSA' was downloaded from [http://chelsa-climate.org/](http://chelsa-climate.org/). Check in their website the specifications on how the data was generated. 

*Monthly, historical records and future projections could also be downloaded and provided for some of the variables. Contact Bernat Bramon Mora if support is needed.*

**If you use this data, you need to acknowledge the CHELSA contribution and cite accordingly.**

