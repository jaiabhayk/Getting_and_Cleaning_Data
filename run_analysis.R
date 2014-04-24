#This method takes input as the data directory name:- train and test. And returns the data table with the selected feature
#on the mean and standard deviation (including the extra columns for activity id and subject id). 
read.data <- function(data.directory.name) {
    no.of.rows = -1
    file.name <- file.path(data.directory.name, paste0("X_", data.directory.name, ".txt"))
    data <- read.table(file.name, nrows = no.of.rows)    
    #Read Feature Names
    feature.names <- read.table("features.txt", as.is = TRUE, col.names = c ("FeatureId", "FeatureName"))
    names(data) <- feature.names$FeatureName
    # names of subset columns required, selcted features containing mean and std
    selected.cols <- grep(".*mean\\(\\)|.*std\\(\\)", feature.names$FeatureName)
    # Required data features are containing mean and std in their names
    # This is done early due to - a) It is an efficient memory utilization, b) It is difficult to select 
	#required columns (containing mean and std) after appending columns for ActivityId and SubjectId.
    data <- data[, selected.cols]
    
    #Read Subject Ids
    file.name <- file.path(data.directory.name, paste0("subject_", data.directory.name, ".txt"))
    subject.data <- read.table(file.name, nrows = no.of.rows, col.names = c ("SubjectId"))
    data$SubjectId <- subject.data$SubjectId
    
    #Read Activity Ids
    file.name <- file.path(data.directory.name, paste0("y_", data.directory.name, ".txt"))
    activity.data <- read.table(file.name, nrows = no.of.rows, col.names = c ("ActivityId"))
    data$ActivityId <- activity.data$ActivityId    
    data
}

merge.data <- function() { 
    data <- rbind(read.data("train"), read.data("test"))
    data 
}

# Reads the ActivityId from the data and set the Activity name as per table in the activity labels 
addActivityNames <- function(data) {
    activity.labels <- read.table("activity_labels.txt", as.is = TRUE, col.names = c ("ActivityId", "ActivityName"))
    merged.data <- merge(data, activity.labels, by = "ActivityId")
    merged.data
}

cleanColumnNames <- function(data) {
    col.names <- names(data)
    col.names <- gsub('mean(.*)\\(\\)', replacement="Mean", col.names)
    col.names <- gsub('std(.*)\\(\\)', replacement="Std", col.names)
    col.names <- gsub('^t', replacement="TimeDomain", col.names)
    col.names <- gsub('^f', replacement="FrequencyDomain", col.names)    
    col.names <- gsub('-', replacement="", col.names)
    names(data) <- col.names
    data
}


write.tidy.data <- function(file.name) {
    data <- cleanColumnNames(addActivityNames(merge.data()))
    col.measure.vars <- setdiff(names(data), c("ActivityName", "SubjectId", "ActivityId"))
    melted.data <- melt(data, id = c("ActivityName", "SubjectId"), measure.vars = col.measure.vars, na.rm=TRUE)
    tidy.data <- dcast(melted.data, ActivityName + SubjectId ~ variable, mean)
    write.table(tidy.data, file.name)
}

print("Writing Tidy Data Set to the file tidy.txt")
write.tidy.data("tidy.txt")
print("Done...")