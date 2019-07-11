pollutantmean<- function(directory="specdata",pollutant,id=1:322)
{
    dat<-data.frame()
    files<-list.files("specdata",full.names = TRUE)
    for (i in id)
    {
        dat<-rbind(dat,read.csv(files[i]))
        
    }
    if(pollutant=="sulfate")
        {
            mean(dat$sulfate,na.rm=TRUE)
        }
    else
        {
            mean(dat$nitrate,na.rm=TRUE)
        }
}
