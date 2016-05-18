corr <- function(directory= "C:/Users/lachyrussell/datascience/specdata/", threshold =0){
  
setwd(directory)
id = 1:332
id2 <- id
ID <- c()
COR <- c()
for (i in 1:length(id)){
    id2[i]<-sprintf("%03d", id[i])
    id2
    temp_df_test <-read.csv(paste(id2[i],".csv",sep = ""),header = TRUE, sep = ",")
    temp_ID <- c(id[i])
    complete <- complete.cases(temp_df_test)
    good<-temp_df_test[complete,]
    if (c(sum(complete.cases(temp_df_test)))>threshold)
    {temp_COR <- cor(good$sulfate,good$nitrate)}
    else {temp_COR <- NA}
    ID<-rbind(ID,temp_ID)
    COR<-rbind(COR,temp_COR)
  }
df <- cbind(ID,COR) 
colnames(df) <- c("id","cor")
df
}