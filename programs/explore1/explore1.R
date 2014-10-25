## ============================================================================
## WHAT		initial EDA and some output of NYC campaign data  
## HOW          basic summaries and plots
## NOTES        
## AUTHOR       [AMA!] Pawel Paczuski [pavopax.com]  
## ============================================================================

source("../header.R")
library(scales)                         #for ggplot scales

## ============================================================================
## (1) DATA DEVELOPMENT
## ============================================================================
df0 <- read.csv(paste0(origdir, "/2013_Campaign_Contributions.csv"), head=TRUE,
                stringsAsFactors=FALSE)
## checks
summary(df0)
dim(df0)
tail(df0)

## good here
tt <- dim(df0)[1]
df <- tbl_df(df0[-tt,])
write.csv(df, paste0(datadir, "/campaign.csv"))


## ============================================================================
## (2) OUTPUT
## ============================================================================

## number of contributions
(df_contrib <- arrange(data.frame(table(df$CANDLAST)), -Freq))

p0 <- ggplot(df_contrib, aes(x=reorder(Var1, Freq), y = Freq)) +
    geom_bar(stat="identity") + coord_flip() +
    labs(x="Candidate", y="Number of Contributions (2013)")
p0


## summary of donation amounts
summary(df$AMNT)
arrange(data.frame(table(df$AMNT)), -Freq)


p1 <- qplot(df$AMNT, geom="histogram", binwidth=30) + 
    labs(x="amount ($)", y="frequency") +
    scale_x_continuous(breaks=pretty_breaks(n=7))
p1

limm <- 5500
qplot(df$AMNT, geom="histogram", binwidth=30) + 
    labs(x="amount ($)", y="frequency") +
    scale_x_continuous(breaks=pretty_breaks(n=7)) +
    xlim(-limm,limm)


## top amounts
tt <- grep("^CAND", names(df))
arrange(df, -AMNT)[1:10,c(tt,26)]




## ============================================================================
## (3) SAVE OUTPUT
## ============================================================================
png(paste0(outdir, "/counts.png"), width=700, height=450)
p0
dev.off()


png(paste0(outdir, "/amounts.png"), width=700, height=450)
p1
dev.off()
