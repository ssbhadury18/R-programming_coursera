getwd()
list.files(getwd())
list.files("specdata")
length(list.files("specdata"))
x<-function(directory){
     dir<- directory
    data_dir<- paste(getwd(), dir, sep="/")
    files <- list.files(data_dir, pattern='\\.csv')
    tables<- lapply(paste(data_dir,files,sep="/"), read.csv, header=TRUE)
    assign ('pollutantmean', do.call(rbind,table))
    
  }

folder<- "C:/Users/ssbhadury18/Documents/specdata/"
file_list<- list.files(path=folder, pattern="*.csv")
data<-
  do.call("rbind",
          lapply(file_list,
                 function(x)
                   read.csv(paste(folder,x, sep=''),plot
                            stringsAsFactors = FALSE)))
str(data)
complete.cases(data)
y<- data[complete.cases(data), ]
str(y)
y
dim(y)
head(y)
summary(y)
a<- y [2:2]
b<- y [3:3]
cor(a,b)






