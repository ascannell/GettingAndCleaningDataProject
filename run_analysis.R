## File to read in  data files, combine them, and create tidy data set

## Set working directory
setwd("~/Coursera/Data_Science/Getting_and_Cleaning_data")

## load required libraries
packages <- c("data.table", "reshape2", "plyr")
sapply(packages, require, character.only=TRUE, quietly=TRUE)

## Set up file path and read in files
filePath <- file.path("./UCI_HAR_Dataset")

## Read in training files
dtSubjectTrain <- fread(file.path(filePath,"train","subject_train.txt")) # File containing subject identifiers
dtDataTrain <- data.table(read.table(file.path(filePath,"train","X_train.txt"))) # File containing feature vectors
dtActivityTrain <- fread(file.path(filePath,"train","Y_train.txt")) # File containing activity information

## Read in test files
dtSubjectTest <- fread(file.path(filePath,"test","subject_test.txt")) # File containing subject identifiers
dtDataTest <- data.table(read.table(file.path(filePath,"test","X_test.txt"))) # File containing feature vectors
dtActivityTest <- fread(file.path(filePath,"test","Y_test.txt")) # File containg activity information

# Merge files using rbind and cbind
dtSubject <- rbind(dtSubjectTrain,dtSubjectTest) # Concatenates the files with subject information
setnames(dtSubject,"V1","subject") # Adds name to subject variable column
dtActivity <- rbind(dtActivityTrain,dtActivityTest) # Concatenates the files with activity information
setnames(dtActivity,"V1","activityNum") # Adds name to activity variable column
dtData <- rbind(dtDataTrain,dtDataTest) # Concatenates the files with the feature vectors
dtSubjectActivity <- cbind(dtSubject,dtActivity) # Merges the columns of the subject and activity tables
dtComplete <- cbind(dtSubjectActivity,dtData) # Merges the columns of the feature vectors and subject/activity table

# Set key for data table
setkey(dtComplete,subject,activityNum)

# Read in features.txt file to sort out mean and standard deviation results in feature vectors
dtFeatures <- fread(file.path(filePath,"features.txt"))  # Reads in features description file
setnames(dtFeatures, c("featureNum","featureName")) # Add column names to features table
dtFeatures <- dtFeatures[grepl("mean\\(\\)|std\\(\\)", featureName)] # Sort out measurements of mean and standard deviation
dtFeatures$featureCode <- dtFeatures[,paste0("V",featureNum)] # Add V to featureNum to match column names in merged table
featuresSelect <- c(key(dtComplete),dtFeatures$featureCode) # Create vector of column names to select
dtComplete <- dtComplete[,featuresSelect,with = FALSE] # Subset data table to select only desired columns

# Swap out activity numbers with descriptive names
dtActivityNames <- fread(file.path(filePath,"activity_labels.txt")) # read in file with activity names
setnames(dtActivityNames,names(dtActivityNames),c("activityNum","activity")) # Add column names to activity file
dtComplete <- merge(dtComplete, dtActivityNames, by="activityNum", all.x = TRUE) # Change the activity numbers to names
setcolorder(dtComplete,c("subject","activity","V1","V2","V3","V4","V5","V6",
                         "V41","V42","V43","V44","V45","V46","V81","V82","V83",
                         "V84","V85","V86","V121","V122","V123","V124","V125",
                         "V126","V161","V162","V163","V164","V165","V166",
                         "V201","V202","V214","V215","V227","V228","V240",
                         "V241","V253","V254","V266","V267","V268","V269",
                         "V270","V271","V345","V346","V347","V348","V349",
                         "V350","V424","V425","V426","V427","V428","V429",
                         "V503","V504","V516","V517","V529","V530","V542","V543","activityNum")) # Reorders columns
dtComplete[,activityNum:=NULL] # Remove acitivityNum column from table

# Swap out feature designators with descriptive names
columnNames <- as.vector(dtFeatures$featureName) # Create character vector from column of feature names
columnNames <- paste0("mean-",columnNames) # prepend the string "mean-" to every entry in the character vector
setnames(dtComplete,names(dtComplete),c("subject","activity",columnNames)) # Write the column names to the table

# Calculate mean of each feature by subject and activity
dtTidyData <- as.data.table(ddply(dtComplete, .(subject,activity), colwise(mean))) # Create tidy data table

# Write tidy data set to txt file in working directory
write.table(dtTidyData, file = "TidyData.txt", row.name = FALSE)