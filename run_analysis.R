
###############################################
#############   COURSE PROJECT   ##############
#########  Getting & Cleaning Data  ###########
###############################################


library(readxl)
library(magrittr)
library(data.table)
library(tidyverse)
library(xml2)
library(openxlsx)
library(dplyr)
library(readr)
library(httr)


###############################################
######  create a list of files to read   ######
###############################################


datafiles <- list.files(path = "C:\\Users\\aumrge\\Documents\\Coursera\\Course 03 - Getting and Cleaning Data\\Course Project\\Data\\UCI HAR Dataset\\UCI HAR Dataset", 
                   recursive = TRUE, full.names = TRUE) %>%
          .[!str_detect(., "(Signals|README|zip|info|~)")]

#################################################
##########  location and files names   ########## 
##########     in datafiles list       ##########
#################################################
#
#[1] activity_labels.txt"    
#[2] features.txt"           
#[3] test/subject_test.txt"  
#[4] test/X_test.txt"        
#[5] test/y_test.txt"        
#[6] train/subject_train.txt"
#[7] train/X_train.txt"      
#[8] train/y_train.txt"      
#
###############################################

############################################################################################
############################      PROJECT REQUIREMENTS     #################################
############################################################################################
#
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names. 
# 5) From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.   
#
############################################################################################



############################################################################################
################      PROJECT REQUIREMENTS SATISFIED - THIS SECTION     ####################
############################################################################################
#
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3) Uses descriptive activity names to name the activities in the data set
#
############################################################################################


################################################################################################################
#############################  Read files into dataframes   #################################################### 
################################################################################################################


activity_labels      <- read.csv(datafiles[1], header = FALSE, sep = "", col.names = c("Activity_ID", "Activity"))
features             <- read.csv(datafiles[2], header = FALSE, sep = "", col.names = c("Feature_ID","Feature"))
                        
                        

subjects_test        <- read.csv(datafiles[3], header = FALSE, sep = "", col.names = c("Subject_ID"))
subjects_Training    <- read.csv(datafiles[6], header = FALSE, sep = "", col.names = c("Subject_ID"))
                        


activities_test      <- read.csv(datafiles[5], header = FALSE, sep = "", col.names = c("Activity_ID")) %>% 
                              left_join(activity_labels, by = c("Activity_ID" = "Activity_ID")) 

activities_Training  <- read.csv(datafiles[8], header = FALSE, sep = "", col.names = c("Activity_ID")) %>% 
                              left_join(activity_labels, by = c("Activity_ID" = "Activity_ID")) 




data_set_test        <- read.csv(datafiles[4], header = FALSE, sep = "", col.names = features$Feature) %>% 
                              select( c(contains("mean"), contains("std")))  
                     
  
data_set_training    <- read.csv(datafiles[7], header = FALSE, sep = "", col.names = features$Feature) %>% 
                              select( c(contains("mean"), contains("std")))  



final_test_df        <- subjects_test %>% 
                              bind_cols(activities_test, data_set_test) %>% 
                              select( -c("Activity_ID"))

final_training_df    <- subjects_Training %>% 
                              bind_cols(activities_Training, data_set_training) %>% 
                              select( -c("Activity_ID"))



############################################################################################
################      PROJECT REQUIREMENTS SATISFIED - THIS SECTION     ####################
############################################################################################
#
# 4) Appropriately labels the data set with descriptive variable names. 
#
############################################################################################


Final_Data       <- final_test_df %>% 
                              bind_rows(final_training_df) %>% #, col.names = feature_names) %>% 
                              rename("Time_Body_Acceleration_Mean_X" = tBodyAcc.mean...X,
                                     "Time_Body_Acceleration_Mean_Y" = tBodyAcc.mean...Y,
                                     "Time_Body_Acceleration_Mean_Z" = tBodyAcc.mean...Z,
                                     "Time_Gravity_Acceleration_Mean_X" = tGravityAcc.mean...X,
                                     "Time_Gravity_Acceleration_Mean_Y" = tGravityAcc.mean...Y,
                                     "Time_Gravity_Acceleration_Mean_Z" = tGravityAcc.mean...Z,
                                     "Time_Body_Acceleration_Jerk_Mean_X" = tBodyAccJerk.mean...X,
                                     "Time_Body_Acceleration_Jerk_Mean_Y" = tBodyAccJerk.mean...Y,
                                     "Time_Body_Acceleration_Jerk_Mean_Z" = tBodyAccJerk.mean...Z,
                                     "Time_Body_Gyro_Mean_X" = tBodyGyro.mean...X,
                                     "Time_Body_Gyro_Mean_Y" = tBodyGyro.mean...Y,
                                     "Time_Body_Gyro_Mean_Z" = tBodyGyro.mean...Z,
                                     "Time_Body_Gyro_Jerk_Mean_X" = tBodyGyroJerk.mean...X,
                                     "Time_Body_Gyro_Jerk_Mean_Y" = tBodyGyroJerk.mean...Y,
                                     "Time_Body_Gyro_Jerk_Mean_Z" = tBodyGyroJerk.mean...Z,
                                     "Time_Body_Acceleration_Magnitude_Mean" = tBodyAccMag.mean..,
                                     "Time_Gravity_Acceleration_Magnitude_Mean" = tGravityAccMag.mean..,
                                     "Time_Body_Acceleration_Jerk_Magnitude_Mean" = tBodyAccJerkMag.mean..,
                                     "Time_Body_Gyro_Magnitude_Mean" = tBodyGyroMag.mean..,
                                     "Time_Body_Gyro_Jerk_Magnitude_Mean" = tBodyGyroJerkMag.mean..,
                                     "Frequency_Body_Acceleration_Mean_X" = fBodyAcc.mean...X,
                                     "Frequency_Body_Acceleration_Mean_Y" = fBodyAcc.mean...Y,
                                     "Frequency_Body_Acceleration_Mean_Z" = fBodyAcc.mean...Z,
                                     "Frequency_Body_Acceleration_Mean_Frequency_X" = fBodyAcc.meanFreq...X,
                                     "Frequency_Body_Acceleration_Mean_Frequency_Y" = fBodyAcc.meanFreq...Y,
                                     "Frequency_Body_Acceleration_Mean_Frequency_Z" = fBodyAcc.meanFreq...Z,
                                     "Frequency_Body_Acceleration_Jerk_Mean_X" = fBodyAccJerk.mean...X,
                                     "Frequency_Body_Acceleration_Jerk_Mean_Y" = fBodyAccJerk.mean...Y,
                                     "Frequency_Body_Acceleration_Jerk_Mean_Z" = fBodyAccJerk.mean...Z,
                                     "Frequency_Body_AccelerationJerk_Mean_Frequency_X" = fBodyAccJerk.meanFreq...X,
                                     "Frequency_Body_AccelerationJerk_Mean_Frequency_Y" = fBodyAccJerk.meanFreq...Y,
                                     "Frequency_Body_AccelerationJerk_Mean_Frequency_Z" = fBodyAccJerk.meanFreq...Z,
                                     "Frequency_Body_Gyro_Mean_X" = fBodyGyro.mean...X,
                                     "Frequency_Body_Gyro_Mean_Y" = fBodyGyro.mean...Y,
                                     "Frequency_Body_Gyro_Mean_Z" = fBodyGyro.mean...Z,
                                     "Frequency_Body_Gyro_Mean_Frequency_X" = fBodyGyro.meanFreq...X,
                                     "Frequency_Body_Gyro_Mean_Frequency_Y" = fBodyGyro.meanFreq...Y,
                                     "Frequency_Body_Gyro_Mean_Frequency_Z" = fBodyGyro.meanFreq...Z,
                                     "Frequency_Body_Acceleration_Magnitude_Mean" = fBodyAccMag.mean..,
                                     "Frequency_Body_Acceleration_Magnitude_Mean_Frequency" = fBodyAccMag.meanFreq..,
                                     "Frequency_Body_Acceleration_Jerk_Magnitude_Mean" = fBodyBodyAccJerkMag.mean..,
                                     "Frequency_Body_Acceleration_Jerk_Magnitude_Mean_Frequency" = fBodyBodyAccJerkMag.meanFreq..,
                                     "Frequency_Body_Gyro_Magnitude_Mean" = fBodyBodyGyroMag.mean..,
                                     "Frequency_Body_Gyro_Magnitude_Mean_Frequency" = fBodyBodyGyroMag.meanFreq..,
                                     "Frequency_Body_Gyro_Jer_kMagnitude_Mean" = fBodyBodyGyroJerkMag.mean..,
                                     "Frequency_Body_Gyro_Jerk_Magnitude_Mean_Frequency" = fBodyBodyGyroJerkMag.meanFreq..,
                                     "Angle_Time_Body_Acceleration_Mean_Gravity" = angle.tBodyAccMean.gravity.,
                                     "Angle_Time_Body_Acceleration_Jerk_Mean_Gravity_Mean" = angle.tBodyAccJerkMean..gravityMean.,
                                     "Angle_Time_Body_Gyro_Mean_Gravity_Mean" = angle.tBodyGyroMean.gravityMean.,
                                     "Angle_Time_Body_Gyro_JerkMean_Gravity_Mean" = angle.tBodyGyroJerkMean.gravityMean.,
                                     "Angle_X_Gravity_Mean" = angle.X.gravityMean.,
                                     "Angle_Y_Gravity_Mean" = angle.Y.gravityMean.,
                                     "Angle_Z_Gravity_Mean" = angle.Z.gravityMean.,
                                     "Time_Body_Acceleration_Standard_Deviation_X" = tBodyAcc.std...X,
                                     "Time_Body_Acceleration_Standard_Deviation_Y" = tBodyAcc.std...Y,
                                     "Time_Body_Acceleration_Standard_Deviation_Z" = tBodyAcc.std...Z,
                                     "Time_Gravity_Acceleration_Standard_Deviation_X" = tGravityAcc.std...X,
                                     "Time_Gravity_Acceleration_Standard_Deviation_Y" = tGravityAcc.std...Y,
                                     "Time_Gravity_Acceleration_Standard_Deviation_Z" = tGravityAcc.std...Z,
                                     "Time_Body_Acceleration_Jerk_Standard_Deviation_X" = tBodyAccJerk.std...X,
                                     "Time_Body_Acceleration_Jerk_Standard_Deviation_Y" = tBodyAccJerk.std...Y,
                                     "Time_Body_Acceleration_Jerk_Standard_Deviation_Z" = tBodyAccJerk.std...Z,
                                     "Time_Body_Gyro_Standard_Deviation_X" = tBodyGyro.std...X,
                                     "Time_Body_Gyro_Standard_Deviation_Y" = tBodyGyro.std...Y,
                                     "Time_Body_Gyro_Standard_Deviation_Z" = tBodyGyro.std...Z,
                                     "Time_Body_Gyro_Jerk_Standard_Deviation_X" = tBodyGyroJerk.std...X,
                                     "Time_Body_Gyro_Jerk_Standard_Deviation_Y" = tBodyGyroJerk.std...Y,
                                     "Time_Body_Gyro_Jerk_Standard_Deviation_Z" = tBodyGyroJerk.std...Z,
                                     "Time_Body_Acceleration_Magnitude_Standard_Deviation" = tBodyAccMag.std..,
                                     "Time_Gravity_Acceleration_Magnitude_Standard_Deviation" = tGravityAccMag.std..,
                                     "Time_Body_AccelerationJerk_Magnitude_Standard_Deviation" = tBodyAccJerkMag.std..,
                                     "Time_Body_Gyro_Magnitude_Standard_Deviation" = tBodyGyroMag.std..,
                                     "Time_Body_Gyro_Jerk_Magnitude_Standard_Deviation" = tBodyGyroJerkMag.std..,
                                     "Frequency_Body_Acceleration_Standard_Deviation_X" = fBodyAcc.std...X,
                                     "Frequency_Body_Acceleration_Standard_Deviation_Y" = fBodyAcc.std...Y,
                                     "Frequency_Body_Acceleration_Standard_Deviation_Z" = fBodyAcc.std...Z,
                                     "Frequency_Body_Acceleration_Jerk_Standard_Deviation_X" = fBodyAccJerk.std...X,
                                     "Frequency_Body_Acceleration_Jerk_Standard_Deviation_Y" = fBodyAccJerk.std...Y,
                                     "Frequency_Body_Acceleration_Jerk_Standard_Deviation_Z" = fBodyAccJerk.std...Z,
                                     "Frequency_Body_Gyro_Standard_Deviation_X" = fBodyGyro.std...X,
                                     "Frequency_Body_Gyro_Standard_Deviation_Y" = fBodyGyro.std...Y,
                                     "Frequency_Body_Gyro_Standard_Deviation_Z" = fBodyGyro.std...Z,
                                     "Frequency_Body_Acceleration_Magnitude_Standard_Deviation" = fBodyAccMag.std..,
                                     "Frequency_Body_Acceleration_Jerk_Magnitude_Standard_Deviation" = fBodyBodyAccJerkMag.std..,
                                     "Frequency_Body_Gyro_Magnitude_Standard_Deviation" = fBodyBodyGyroMag.std..,
                                     "Frequency_Body_Gyro_Jerk_Magnitude_Standard_Deviation" = fBodyBodyGyroJerkMag.std..
                                     
                                      )





############################################################################################
################      PROJECT REQUIREMENTS SATISFIED - THIS SECTION     ####################
############################################################################################
#
# 5) From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.   
#
############################################################################################


    Subject_Averages <- Final_Data %>% 
       group_by(Subject_ID, Activity) %>% 
       summarise_at(vars(-group_cols()), mean, na.rm = TRUE)


     
    #######################################################
    ##########    Clean Up Global Environment   ###########
    #########  Removal all but "Final_data_set"  ##########
    ##########             Optional             ###########
    #######################################################
    
    rm(list = ls(pattern = "^[adfs]")  )
    


  