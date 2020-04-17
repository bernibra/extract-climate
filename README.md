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

| id | site | canton |
| :---: | :---: | :---: |
| [site1](data/processed/sites/site1) | Calanda | GR |
| [site2] | Nesselboden | GR |
| [site3] | 1600m | GR |
| [site4] | Arella | GR |
| [site5] | Stillberg high | GR |
| [site6] | Stillberg low | GR |
| [site7] | Furka | VS |
| [site8] | Leuk | VS |
| [site9] | Oberu | VS |
| [site10] | Fineln | VS |
| [site11] | Zeneggen | VS |
| [site12] | Eschikon | ZH |
| [site13] | CalandaPeak | GR |
| [site14] | Les Pléiades | VD |
| [site15] | Hauteville | VD |
| [site16] | Chamby | VD |
| [site17] | Neusäss | GR |
| [site18] | Les Diablerets | VD |
| [site19] | Bovonne | VD |
| [site20] | LaCorde | VD |
| [site21] | L'Hongrin | VD |
| [site22] | La Forclaz/Le Sépey | VD |
| [site23] | GryonHostel | VD |
| [site24] | LesPosses | VD |
| [site25] | Solalex | VD |
| [site26] | Anzeinde | VD |
| [site27] | Paneirosse | VD |
| [site28] | Bex | VD |
| [site29] | Gryon | VD |
| [site30] | Aigle | VD |
| [site31] | Prabeneu2 | VD |
| [site32] | LesMartinaux | VD |
| [site33] | Cretelet | VD |
| [site34] | Rionda2 | VD |
| [site35] | UNIL greenhouse | VD |
| [site36] | Zurich-ETH Hoengg | ZH |
| [site37] | Rionda1 | VD |
| [site38] | Prabeneu1 | VD |
