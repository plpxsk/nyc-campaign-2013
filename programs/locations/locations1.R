## ============================================================================
## WHAT         exploring location data
## HOW          
## NOTES        ** WORKING **
## AUTHOR       [AMA!] Pawel Paczuski [pavopax.com]  
## ============================================================================

source("../header.R")


## ============================================================================
## (0) FUNCTIONS
## ============================================================================
## somewhat "efficient" function to sample rows within a borough
## cx = borough code || nr = # of rows to sample
sampler <- function(cx, nr=10){
    ## get data once
    dfx <- filter(df, BOROUGHCD==cx)

    ll <- dim(dfx)[1]
    rowx <- sample(1:ll, nr)

    cat("Rows Selected:\n")
    cat(rowx)
    cat("\n")
    return(dfx[rowx,"Location.1"])
}



## ============================================================================
## (1) DATA DEVELOPMENT
## ============================================================================
df <- read.csv(paste0(datadir, "/campaign.csv"), head=TRUE,
               stringsAsFactors=FALSE)



## ============================================================================
## (2) ORIENTATION
## ============================================================================

## can I use an id instead of CANDLAST and CANDFIRST? yes!

########## need table exlcuding zero counts ?!

table(df$CANDLAST, df$CANDID, exclude = "0")


## want to show candidates by donor's borough

## first, explore boroughs
table(df$BOROUGHCD)
sampler("K", nr=50)
sampler("M", nr=50)
sampler("Q", nr=50)
sampler("S", nr=50)
sampler("X", nr=50)
sampler("Z", nr=50)

## now, match borough to candidata




    


## ============================================================================
## (3) OUTPUT
## ============================================================================
