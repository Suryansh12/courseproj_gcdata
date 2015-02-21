
   ## Step 1.1 : Reading test data

X_test <- read.table("~/UCI HAR Dataset/test/X_test.txt", quote = "\"")
y_test <- read.table("~/UCI HAR Dataset/test/y_test.txt", quote= "\"")
subject_test <- read.table("~/UCI HAR Dataset/test/subject_test.txt", quote="\"")
test <- cbind(subject_test,y_test,X_test)

   ## Step 1.2 : Reading training data

X_train <- read.table("~/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("~/UCI HAR Dataset/train/y_train.txt", quote="\"")
subject_train <- read.table("~/UCI HAR Dataset/train/subject_train.txt", quote="\"")
train <- cbind(subject_train,y_train,X_train)

   ## Step 1.3 : Combining training and test data

data <- rbind(test,train)

   

   ## Step 2 : Subsetting data (only selecting mean & std variables)

features <- read.table("~/UCI HAR Dataset/features.txt", quote="\"")

colnames(data) <- c("Subject_No","Activity_No",as.character(features$V2))

x <- grep("mean|std",features$V2,ignore.case=TRUE)

y <- c(1,2,x+2)   ##x+2 to account for activity_no & subject_no columns

data_subset <- data[,y]


   
   ## Step 3 : Inseting activity labels corresponding to the activity no.s

activity_labels <- read.table("~/UCI HAR Dataset/activity_labels.txt", quote="\"")

colnames(activity_labels) <- c("No","Activity_Name")

mergedData <- merge(activity_labels,data_subset,by.x="No",by.y="Activity_No",all=TRUE)



   ## Step 4: Optimising the column names to be more descriptive

cleanupcolnames <- function(x) 
   {
          x=gsub('BodyBody','Body',x)
          x=gsub('-','.',x)          
          x=gsub('\\(','',x)
          x=gsub(')','',x)
          x             
   }
colnames(mergedData) <- cleanupcolnames(colnames(mergedData))



   ##Step 5.1: Reshaping data (wide)

library(reshape2)
d <- ncol(mergedData)

meltdata <- melt(mergedData,id=c("Activity_Name","Subject_No"),
                 measure.vars= colnames(mergedData[,c(4:d)]))

newdata <- dcast(meltdata, Activity_Name + Subject_No ~ variable,mean)


   ##Step 5.2: Renaming columns to indicate average data

d <- d-1     ##Since the "activity_no" column was eliminated

colnames(newdata)[3:d] <- paste("avg_",colnames(newdata)[3:d],sep="")


   ##Step 5.3: Writing into a text file

write.table(newdata, file = "./tidydata.txt",row.names =FALSE)

