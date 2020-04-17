# extract-climate
This is just an example on how to extract climatic variables for a set of field sites in Switzerland.

All climatic data was either provided by Antoine Guisan from [UNIL](https://www.unil.ch/dee/en/home/menuinst/people/group-leaders/prof-antoine-guisan.html) or downloaded from the [WSL database](http://chelsa-climate.org/). The climatic data for the different sites was downloaded and compiled on the 17th of April, 2020.

```diff
Before using the data or code, consider the following:
- WARNING #1: This is not all available climatic data for the different sites, only that data that was easily accessible. Additional climatic data can be found for the different sites, and you can contact me for support on how to obtain it. </div>
- WARNING #2: There seems to be a problem with the units of the Rechalp data for the years 2011--2015 (i.e. the origin of such problems is the data, not the code to extract it). I am currently in contact with Antoine Guisan's group to try to figure out how to correct it.
- WARNING #3: I can't guarrantee that there are no other problems with the data; therefore, make sure you double-check your results and report any additional problems.  
```
The data is stored in `data/processed/sites/`. For every site, there is a *.zip* file containing: a README file with information regarding the source of the data; an *R* object (.rds) that can be open using the *R* function `readRDS()`; and, a *.csv* file with the same information as the *R* object.

Every site has an id assigned, referenced in the following table:

| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell  |
