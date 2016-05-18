#"C:/Users/lachyrussell/datascience/specdata/"
#"sulfate" or "nitrate"
pollutantmean <- function(directory, pollutant, id = 1:332){

setwd(directory)
df <- data.frame(Date=as.Date(character()),
                   sulfate=character(), 
                   nitrate=character(),
                   id=character(),
                   stringsAsFactors=FALSE) 
id2 <- id
for (i in 1:length(id)){
    id2[i]<-sprintf("%03d", id[i])
    id2
    df <-rbind(read.csv(paste(id2[i],".csv",sep = ""),header = TRUE, sep = ","),df)
    }
mean_value<-mean(df[[pollutant]], na.rm = TRUE)
mean_value
}