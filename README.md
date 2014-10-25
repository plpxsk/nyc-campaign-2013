
## EXPLORING NYC 2013 CAMPAIGN DATA
> A listing of campaign contributions for candidates for New York City office during the 2013 election cycle  
> sources at bottom

## to do (working: locations1.R)
place individual account holders on map, with circle corresponding to size of contribution

## number of contributions  
> `programs/explore1/explore1.R`  
![bar chart](https://raw.githubusercontent.com/pavopax/nyc-campaign-2013/master/output/counts.png)


\#|Name|Frequency
---|---|---
1 |         Weiner | 3311
2 |          Quinn | 3043
3 |   Vallone, Jr. | 2242
4 |        Pheffer | 1461
5 |       Stringer |  999
6 |         Quiroz |  922
7 |           Oddo |  535
8 |         Rivera |  487
9 |         Dobrin |  421
10|       Waterman |  416
11|        Gotlieb |  383
12|        Recchia |  380
13|       Hoffnung |  366
14|          Vacca |  295
15|       Narcisse |  265
16|         Taylor |  247
17|      Diaz, Jr. |  235
18|     Simanowitz |  204
19| Simmons-Oliver |  178
20|     Lisyanskiy |  135
21|      de Blasio |  107
22|        Crowley |  100
23|          Dromm |   90
24|         Matteo |   78
25|       Krongold |   74
26|      Rosenthal |   65
27|         Weprin |   41
28|      Garodnick |   27
29|         Comrie |   22
30|        Gentile |   20
31|         Lappin |    9
32|        Ignizio |    2

## summary of contribution amounts ($, negative=refund)
![histogram](https://raw.githubusercontent.com/pavopax/nyc-campaign-2013/master/output/amounts.png)


   Min.| 1st Qu.| Median | Mean | 3rd Qu.| Max. 
---|---|---|---|---|---
  -7700 | 50| 200| 665| 500| 8250 

#### most frequent donations
\#|Amount|Frequency
---|---|---
1  |  $   250 | 2116
2  |  $   100 | 1912
3  |  $   500 | 1785
4  |  $  1000 | 1514
5  |  $    50 | 1412
6  |  $    25 | 1059
7  |  $  4950 |  866
8  |  $    20 |  676
9  |  $   175 |  491
10 |  $    10 |  472


## BY LOCATION  
#### NOTES  
There were six (unknown, but guessable) borough codes. NYC has 5
boroughs, and so to determine the mapping, I randomly sampled 50
location observations for each borough code, and then visually
inspected them. The final code makes logical sense too.

#### initial borough codes
[missing]|        K|    M|    Q|    S|    X|    Z| TOTAL
---|---|---|---|---|---|---|---
 125| 2582| 4912| 3770|  813| 1006| 3952 | 17160

#### Borough Code Book
> `programs/locations/locations1.R`  

Code|Borough
---|---
K|Brooklyn, NY
M|New York, NY (Manhattan)
Q|Queens, NY (Queens; includes Bayside, Malba, FLushing, Jamaica, others)
S|Staten Island, NY (includes "SI, NY")
X|Bronx, NY (includes a handful of "Pelham Manor, NY")
Z|Non-NYC. (incldues upstate NY and other states, from CT to TX)







#### 




## sources  
> NYC OPEN DATA: https://nycopendata.socrata.com/  
> https://data.cityofnewyork.us/City-Government/2013-Campaign-Contributions/n8p9-7jxp  
> unedited data downloads in /originals/
