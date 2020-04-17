# extract-climate
This is just an example on how to extract climatic variables for a set of field sites in Switzerland.

All climatic data was either provided by Antoine Guisan from [UNIL](https://www.unil.ch/dee/en/home/menuinst/people/group-leaders/prof-antoine-guisan.html) or downloaded either from the [WSL](http://chelsa-climate.org/) or the [WorldClim](https://www.worldclim.org/) databases. The climatic data for the different sites was downloaded and compiled on the 17th of April, 2020.

```diff
Before using the data or code, consider the following:
- WARNING #1: This is not all available climatic data for the different sites, only that data that was easily accessible. Additional climatic data can be found for the different sites, and you can contact me for support on how to obtain it. </div>
- WARNING #2: There seems to be a problem with the units of the Rechalp data for the years 2011--2015 (i.e. the origin of such problems is the data, not the code to extract it). I am currently in contact with Antoine Guisan's group to try to figure out how to correct it.
- WARNING #3: I can't guarantee that there are no other problems with the data; therefore, make sure you double-check your results and report any additional problems.  
```
The data is stored in `data/processed/sites/`. For every site, there is a *.zip* file containing: a README file with information regarding the source of the data; an *R* object (.rds) that can be open using the *R* function `readRDS()`; and, a *.csv* file with the same information as the *R* object.

Every site has an id assigned, referenced in the following table:

| id | site | canton |
| :---: | :---: | :---: |
| [site1](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site1.zip) | Calanda | GR |
| [site2](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site2.zip) | Nesselboden | GR |
| [site3](https://github.com/bernibra/extract-climate/raw/master/https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site3.zip) | 1600m | GR |
| [site4](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site4.zip) | Arella | GR |
| [site5](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site5.zip) | Stillberg high | GR |
| [site6](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site6.zip) | Stillberg low | GR |
| [site7](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site7.zip) | Furka | VS |
| [site8](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site8.zip) | Leuk | VS |
| [site9](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site9.zip) | Oberu | VS |
| [site10](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site10.zip) | Fineln | VS |
| [site11](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site11.zip) | Zeneggen | VS |
| [site12](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site12.zip) | Eschikon | ZH |
| [site13](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site13.zip) | CalandaPeak | GR |
| [site14](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site14.zip) | Les Pléiades | VD |
| [site15](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site15.zip) | Hauteville | VD |
| [site16](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site16.zip) | Chamby | VD |
| [site17](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site17.zip) | Neusäss | GR |
| [site18](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site18.zip) | Les Diablerets | VD |
| [site19](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site19.zip) | Bovonne | VD |
| [site20](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site20.zip) | LaCorde | VD |
| [site21](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site21.zip) | L'Hongrin | VD |
| [site22](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site22.zip) | La Forclaz/Le Sépey | VD |
| [site23](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site23.zip) | GryonHostel | VD |
| [site24](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site24.zip) | LesPosses | VD |
| [site25](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site25.zip) | Solalex | VD |
| [site26](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site26.zip) | Anzeinde | VD |
| [site27](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site27.zip) | Paneirosse | VD |
| [site28](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site28.zip) | Bex | VD |
| [site29](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site29.zip) | Gryon | VD |
| [site30](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site30.zip) | Aigle | VD |
| [site31](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site31.zip) | Prabeneu2 | VD |
| [site32](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site32.zip) | LesMartinaux | VD |
| [site33](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site33.zip) | Cretelet | VD |
| [site34](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site34.zip) | Rionda2 | VD |
| [site35](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site35.zip) | UNIL greenhouse | VD |
| [site36](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site36.zip) | Zurich-ETH Hoengg | ZH |
| [site37](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site37.zip) | Rionda1 | VD |
| [site38](https://github.com/bernibra/extract-climate/raw/master/data/processed/sites/site38.zip) | Prabeneu1 | VD |

