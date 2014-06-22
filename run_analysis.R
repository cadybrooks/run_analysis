Enter file contents here## This function inpmorts the samsung accelerometer testing data, creates 
## variable names, and merges the training and test data sets. The output is 
## a tidy data set

funciton <- run_analysis() {
  ## read the data sets in as data frames
  subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
  X_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
  y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")
  subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
  X_test <- read.table("data/UCI HAR Dataset/train/X_test.txt")
  y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")
  
  #merge test and training data sets
  subject <- merge(subject_train, subject_test, all = TRUE)
  X <- rbind(X_train, X_test)
  y <- rbind(y_train, y_test)

  #Add feature descriptions
  col_names <- read.table("data/UCI HAR Dataset/features.txt", check.names = FALSE)
  names <- t(col_names)
  vec <- as.character(names[2,])
  colnames(X) <- vec
  
  #Bind the subject to the measurements
  X_sub <- cbind(subject, X)
  tidy <- cbind(y, X_sub)
 
  #Extract measurements on mean and standard deviation
  #create vector of columns wiuht mean and standard deviation readings
  mean_col <- c(41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 
                227:228, 240:241, 253:254,266:271,345:350, 424:429, 
                503:507, 516:517, 529:530, 524:525)
  mean_std <- tidy[,mean_col]
  #Create Vector of activity
  activityNames <- read.table("data/UCI HAR Dataset/activity_labels.txt", check.names = FALSE)
  y$Activity <-activityNames[y,2]
  #Add better descriptions to measurement names
  
  #create new dataset with only the average for each tester, activty and measurement
  
  ##Create summarize.txt 
  write.table(mean_std, file="Project/summarize.txt")
}
