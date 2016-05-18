#"C:/Users/lachyrussell/datascience/specdata/"
complete <- function(directory, id = 1:332)
{
setwd(directory)
id2 <- id
ID <- c()
NOBS <- c()
for (i in 1:length(id)){
  id2[i]<-sprintf("%03d", id[i])
  id2
  temp_df_test <-read.csv(paste(id2[i],".csv",sep = ""),header = TRUE, sep = ",")
  temp_ID <- c(id[i])
  temp_NOBS <-c(sum(complete.cases(temp_df_test))) 
  ID<-rbind(ID,temp_ID)
  NOBS<-rbind(NOBS,temp_NOBS)
}
    df <- cbind(ID,NOBS) 
  colnames(df) <- c("id","nobs")
  df
}

