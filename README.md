run_analysis
============

Getting and Cleaning Data Course Project
This tidy set combines the samsung motion processing data collected from 30 testers performing 6 activities.
The script run_analysis.R 
1. inputs combines the test and training data sets into one
2. combines the 3 data sets to add tester id and activity id columns
3. creates column names by using the feature_info files
4. extracts only the mean and standard deviation measurement columns
5. replaces activity labels with activity names 
6. updates measurement column names with more descriptive names
7. creates a new summarize.txt dataset containing the average of each variable, for each activity, and each subject

To run run_analysis.R, download and extract the following dataset your working directory and run_analysis
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
