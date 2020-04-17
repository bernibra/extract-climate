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

 | number  | code | site | canton | 
 | --- | --- | --- |
 | 1 | site1 | Calanda | GR | 
 | 2 | site2 | Nesselboden | GR | 
 | 3 | site3 | 1600m | GR | 
 | 4 | site4 | Arella | GR | 
 | 5 | site5 | Stillberg high | GR | 
 | 6 | site6 | Stillberg low | GR | 
 | 7 | site7 | Furka | VS | 
 | 8 | site8 | Leuk | VS | 
 | 9 | site9 | Oberu | VS | 
 | 10 | site10 | Fineln | VS | 
 | 11 | site11 | Zeneggen | VS | 
 | 12 | site12 | Eschikon | ZH | 
 | 13 | site13 | CalandaPeak | GR | 
 | 14 | site14 | Les Pléiades | VD | 
 | 15 | site15 | Hauteville | VD | 
 | 16 | site16 | Chamby | VD | 
 | 17 | site17 | Neusäss | GR | 
 | 18 | site18 | Les Diablerets | VD | 
 | 19 | site19 | Bovonne | VD | 
 | 20 | site20 | LaCorde | VD | 
 | 21 | site21 | L'Hongrin | VD | 
 | 22 | site22 | La Forclaz/Le Sépey | VD | 
 | 23 | site23 | GryonHostel | VD | 
 | 24 | site24 | LesPosses | VD | 
 | 25 | site25 | Solalex | VD | 
 | 26 | site26 | Anzeinde | VD | 
 | 27 | site27 | Paneirosse | VD | 
 | 28 | site28 | Bex | VD | 
 | 29 | site29 | Gryon | VD | 
 | 30 | site30 | Aigle | VD | 
 | 31 | site31 | Prabeneu2 | VD | 
 | 32 | site32 | LesMartinaux | VD | 
 | 33 | site33 | Cretelet | VD | 
 | 34 | site34 | Rionda2 | VD | 
 | 35 | site35 | UNIL greenhouse | VD | 
 | 36 | site36 | Zurich-ETH Hoengg | ZH | 
 | 37 | site37 | Rionda1 | VD | 
 | 38 | site38 | Prabeneu1 | VD | 
