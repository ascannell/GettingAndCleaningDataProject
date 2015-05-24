# GettingAndCleaningDataProject
Class Project for Coursera Getting and Cleaning Data course

Software Environment
  * Max OS X 10.8.5
  * RStudio version 0.98.1083
  * R version 3.1.1
  * data.table version 1.9.4
  * reshape2 version 1.4.1
  * plyr version 1.8.2

Assumptions
  * Working directory is ~/Coursera/Data_Science/Getting_and_Cleaning_data
  * Zip file is downloaded and UCI_HAR_Dataset is a sub-directory in the working directory
  * All subdirectories for the UCI HAR Dataset remain unchanged from Zip file
  
Operation of R script
  * Set the working directory as shown above
  * Load libraries needed for script
  * Create variable for the UCI HAR Dataset path
  * Read in training and test files
    * I had problems using fread for the larger feature vector files so I had to use a different method to read them in
  * Concatenated the activity, subject, and feature vector files using rbind
    * I added column names to the activity and subject files to use for setting a key
  * Merged the concatenated files together using cbind
  * Created key using subject and activity column names
  * Read in features.txt file to determine which vector elements dealt with mean and std deviation
    * Used grepl to get the feature vector elements with mean() and std() in feature name
    * Created vector of desired feature vector elements using key
    * Subsetted data table to include only desired feature vector elements
  * Read in activity_labels.txt file to get the descriptive names for activity codes
    * Used merge to add the activity descriptions to the data table
    * Re-ordered the columns to put subject first, activity second, and the feature vector elements following
    * Removed the activity number code column to clean things up
  * Got the feature vector element names, modified them, and added them to data table
    * Created character vector with feature vector element names
    * Prepended "mean-" to reflect the end results would be the means of the elements by subject and activity
    * Wrote descriptive names to data table
      * I opted to just use the feature vector element names as given to reduce the size of the column names
      * I had thought about expanding them, but it just seemed like it would end up being too cumbersome
  * Used ddply to create final tidy data table
    * It seemed the easiest way to calculate the means of each feature vector element by subject and activity
    * I had also tried a few other ways, but in the end this way worked most consistently and simply
  * Wrote the final tidy data table to a text file for uploading to Coursera

Reference Sources
  * Google
  * Coursera Discussion Forums
  * RStudio Help
