
Readme descripes the steps taken to create tidy data using the Samsung motion processing data.

read.table to input the data files and check dimensions

Subject - each row identifies who performed the activity for each window sample, range 1 to 30
X - Test or Train, contains the measurements from the motion processing unit
y - Test or Train set data labels for the type of action the tester performing.

Train
subject_train dim() 7352 1
X_train dim() 7352 561
y_train dim() 7352 1

Test
subject_test dim() 2947 1
X_test dim() 2947 561
y_test dim() 2947 1

Steps Taken to tidy data
1. Import all data sets in Data as data frames using read.table
2. Merge the test and training data sets using rbinds
3. Add feature descriptions to the X measurements by reading in the features.txt document, add with colnames
4. Bind the test descriptions to the measurements
5. Extracted only the mean and standard deviation columns from the measurements. I did this by creating a vector 
containing the indexes of the measurements.
6. Replace the Activity labesl with names
7. Make the column names more descriptive names using gsub
7. Create a new, tidy data set with the average of each variable for each activty and each subjecy called summarized


