
## Building data frames
  #-------------------------------1------------------------------------
  df <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, 
                   Regions_2012_Dataset)
  
  colnames(df) <- c("Country", "Code", "Region") #renaming after df creation
  head(df)
  
  #-------------------------------------------------------------------
rm(df)
  #---------------------------------2---------------------------------
  
  df <- data.frame(Country=Countries_2012_Dataset, Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset, stringsAsFactors = T) #renaming colnames in same line as creating it
  
  head(df)
  tail(df)
  summarize(df) #won't show any summary...
  summary(df)
  #-------------------------------------------------------------------


## Merging data frames
  
head(stats2)
head(df)
#merging these based on codes; less prone to accidental differences

merged.stats2.df <-merge(stats2, df, by.x="Country.Code", by.y="Code") 
#by.x for first df argument; by.y for second df argument; name of x is kept
#'Country' in df was kept; 'Code' in df was dropped/merged into 'Country.Code'
head(merged.stats2.df)

merged.stats2.df$Country <- NULL
head(merged.stats2.df)








