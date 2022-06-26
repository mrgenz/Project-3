The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
Time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
The acceleration signal was separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 			
			
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
Also the Magnitude of these three-dimensional signals were calculated using the Euclidean norm. 			
			
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency domain signals.

These signals were used to estimate variables of the feature vector for each pattern:  			
_x, _Y, _Z are used to denote 3-axial signals in the X, Y and Z directions.			


Variable Names used

Subject_ID                                                      = ID number used for Subject (1 - 30)
Activity                                                        = Activity used for the variable readings 
                                                                  (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Time_Body_Acceleration_Mean_X	                                  =	Time_Body_Acceleration_Mean_X
Time_Body_Acceleration_Mean_Y	                                	=	Time_Body_Acceleration_Mean_Y
Time_Body_Acceleration_Mean_Z	                                	=	Time_Body_Acceleration_Mean_Z
Time_Gravity_Acceleration_Mean_X		                            =	Time_Gravity_Acceleration_Mean_X
Time_Gravity_Acceleration_Mean_Y	                             	=	Time_Gravity_Acceleration_Mean_Y
Time_Gravity_Acceleration_Mean_Z	                              =	Time_Gravity_Acceleration_Mean_Z
Time_Body_Acceleration_Jerk_Mean_X	                            =	Time_Body_Acceleration_Jerk_Mean_X
Time_Body_Acceleration_Jerk_Mean_Y	                            =	Time_Body_Acceleration_Jerk_Mean_Y
Time_Body_Acceleration_Jerk_Mean_Z	                            =	Time_Body_Acceleration_Jerk_Mean_Z
Time_Body_Gyro_Mean_X		                                        =	Time_Body_Gyro_Mean_X
Time_Body_Gyro_Mean_Y		                                        =	Time_Body_Gyro_Mean_Y
Time_Body_Gyro_Mean_Z		                                       	=	Time_Body_Gyro_Mean_Z
Time_Body_Gyro_Jerk_Mean_X	                                    =	Time_Body_Gyro_Jerk_Mean_X
Time_Body_Gyro_Jerk_Mean_Y	                                    =	Time_Body_Gyro_Jerk_Mean_Y
Time_Body_Gyro_Jerk_Mean_Z	                                    =	Time_Body_Gyro_Jerk_Mean_Z
Time_Body_Acceleration_Magnitude_Mean	                          =	Time_Body_Acceleration_Magnitude_Mean
Time_Gravity_Acceleration_Magnitude_Mean                      	=	Time_Gravity_Acceleration_Magnitude_Mean
Time_Body_Acceleration_Jerk_Magnitude_Mean                    	=	Time_Body_Acceleration_Jerk_Magnitude_Mean
Time_Body_Gyro_Magnitude_Mean	                                  =	Time_Body_Gyro_Magnitude_Mean
Time_Body_Gyro_Jerk_Magnitude_Mean	                            =	Time_Body_Gyro_Jerk_Magnitude_Mean
Frequency_Body_Acceleration_Mean_X	                           	=	Frequency_Body_Acceleration_Mean_X
Frequency_Body_Acceleration_Mean_Y	                           	=	Frequency_Body_Acceleration_Mean_Y
Frequency_Body_Acceleration_Mean_Z	                           	=	Frequency_Body_Acceleration_Mean_Z
Frequency_Body_Acceleration_Mean_Frequency_X                  	=	Frequency_Body_Acceleration_Mean_Frequency_X
Frequency_Body_Acceleration_Mean_Frequency_Y                  	=	Frequency_Body_Acceleration_Mean_Frequency_Y
Frequency_Body_Acceleration_Mean_Frequency_Z	                  =	Frequency_Body_Acceleration_Mean_Frequency_Z
Frequency_Body_Acceleration_Jerk_Mean_X	                        =	Frequency_Body_Acceleration_Jerk_Mean_X
Frequency_Body_Acceleration_Jerk_Mean_Y	                      	=	Frequency_Body_Acceleration_Jerk_Mean_Y
Frequency_Body_Acceleration_Jerk_Mean_Z	                      	=	Frequency_Body_Acceleration_Jerk_Mean_Z
Frequency_Body_AccelerationJerk_Mean_Frequency_X	              =	Frequency_Body_AccelerationJerk_Mean_Frequency_X
Frequency_Body_AccelerationJerk_Mean_Frequency_Y	              =	Frequency_Body_AccelerationJerk_Mean_Frequency_Y
Frequency_Body_AccelerationJerk_Mean_Frequency_Z	              =	Frequency_Body_AccelerationJerk_Mean_Frequency_Z
Frequency_Body_Gyro_Mean_X	                                    =	Frequency_Body_Gyro_Mean_X
Frequency_Body_Gyro_Mean_Y	                                    =	Frequency_Body_Gyro_Mean_Y
Frequency_Body_Gyro_Mean_Z	                                    =	Frequency_Body_Gyro_Mean_Z
Frequency_Body_Gyro_Mean_Frequency_X	                          =	Frequency_Body_Gyro_Mean_Frequency_X
Frequency_Body_Gyro_Mean_Frequency_Y		                        =	Frequency_Body_Gyro_Mean_Frequency_Y
Frequency_Body_Gyro_Mean_Frequency_Z	                         	=	Frequency_Body_Gyro_Mean_Frequency_Z
Frequency_Body_Acceleration_Magnitude_Mean  	                 	=	Frequency_Body_Acceleration_Magnitude_Mean
Frequency_Body_Acceleration_Magnitude_Mean_Frequency	          =	Frequency_Body_Acceleration_Magnitude_Mean_Frequency
Frequency_Body_Acceleration_Jerk_Magnitude_Mean	                =	Frequency_Body_Acceleration_Jerk_Magnitude_Mean
Frequency_Body_Acceleration_Jerk_Magnitude_Mean_Frequency	      =	Frequency_Body_Acceleration_Jerk_Magnitude_Mean_Frequency
Frequency_Body_Gyro_Magnitude_Mean	                            =	Frequency_Body_Gyro_Magnitude_Mean
Frequency_Body_Gyro_Magnitude_Mean_Frequency                  	=	Frequency_Body_Gyro_Magnitude_Mean_Frequency
Frequency_Body_Gyro_Jer_kMagnitude_Mean	                        =	Frequency_Body_Gyro_Jer_kMagnitude_Mean
Frequency_Body_Gyro_Jerk_Magnitude_Mean_Frequency	              =	Frequency_Body_Gyro_Jerk_Magnitude_Mean_Frequency
Angle_Time_Body_Acceleration_Mean_Gravity	                      =	Angle_Time_Body_Acceleration_Mean_Gravity
Angle_Time_Body_Acceleration_Jerk_Mean_Gravity_Mean	            =	Angle_Time_Body_Acceleration_Jerk_Mean_Gravity_Mean
Angle_Time_Body_Gyro_Mean_Gravity_Mean	                        =	Angle_Time_Body_Gyro_Mean_Gravity_Mean
Angle_Time_Body_Gyro_JerkMean_Gravity_Mean                    	=	Angle_Time_Body_Gyro_JerkMean_Gravity_Mean
Angle_X_Gravity_Mean	                                          =	Angle_X_Gravity_Mean
Angle_Y_Gravity_Mean	                                          =	Angle_Y_Gravity_Mean
Angle_Z_Gravity_Mean	                                          =	Angle_Z_Gravity_Mean
Time_Body_Acceleration_Standard_Deviation_X	                    =	Time_Body_Acceleration_Standard_Deviation_X
Time_Body_Acceleration_Standard_Deviation_Y                   	=	Time_Body_Acceleration_Standard_Deviation_Y
Time_Body_Acceleration_Standard_Deviation_Z	                    =	Time_Body_Acceleration_Standard_Deviation_Z
Time_Gravity_Acceleration_Standard_Deviation_X                	=	Time_Gravity_Acceleration_Standard_Deviation_X
Time_Gravity_Acceleration_Standard_Deviation_Y                	=	Time_Gravity_Acceleration_Standard_Deviation_Y
Time_Gravity_Acceleration_Standard_Deviation_Z                	=	Time_Gravity_Acceleration_Standard_Deviation_Z
Time_Body_Acceleration_Jerk_Standard_Deviation_X              	=	Time_Body_Acceleration_Jerk_Standard_Deviation_X
Time_Body_Acceleration_Jerk_Standard_Deviation_Y	              =	Time_Body_Acceleration_Jerk_Standard_Deviation_Y
Time_Body_Acceleration_Jerk_Standard_Deviation_Z              	=	Time_Body_Acceleration_Jerk_Standard_Deviation_Z
Time_Body_Gyro_Standard_Deviation_X	                            =	Time_Body_Gyro_Standard_Deviation_X
Time_Body_Gyro_Standard_Deviation_Y	                            =	Time_Body_Gyro_Standard_Deviation_Y
Time_Body_Gyro_Standard_Deviation_Z	                            =	Time_Body_Gyro_Standard_Deviation_Z
Time_Body_Gyro_Jerk_Standard_Deviation_X	                      =	Time_Body_Gyro_Jerk_Standard_Deviation_X
Time_Body_Gyro_Jerk_Standard_Deviation_Y                      	=	Time_Body_Gyro_Jerk_Standard_Deviation_Y
Time_Body_Gyro_Jerk_Standard_Deviation_Z                      	=	Time_Body_Gyro_Jerk_Standard_Deviation_Z
Time_Body_Acceleration_Magnitude_Standard_Deviation	            =	Time_Body_Acceleration_Magnitude_Standard_Deviation
Time_Gravity_Acceleration_Magnitude_Standard_Deviation	        =	Time_Gravity_Acceleration_Magnitude_Standard_Deviation
Time_Body_AccelerationJerk_Magnitude_Standard_Deviation	        =	Time_Body_AccelerationJerk_Magnitude_Standard_Deviation
Time_Body_Gyro_Magnitude_Standard_Deviation	                    =	Time_Body_Gyro_Magnitude_Standard_Deviation
Time_Body_Gyro_Jerk_Magnitude_Standard_Deviation	              =	Time_Body_Gyro_Jerk_Magnitude_Standard_Deviation
Frequency_Body_Acceleration_Standard_Deviation_X		            =	Frequency_Body_Acceleration_Standard_Deviation_X
Frequency_Body_Acceleration_Standard_Deviation_Y	              =	Frequency_Body_Acceleration_Standard_Deviation_Y
Frequency_Body_Acceleration_Standard_Deviation_Z	             	=	Frequency_Body_Acceleration_Standard_Deviation_Z
Frequency_Body_Acceleration_Jerk_Standard_Deviation_X           =	Frequency_Body_Acceleration_Jerk_Standard_Deviation_X
Frequency_Body_Acceleration_Jerk_Standard_Deviation_Y	          =	Frequency_Body_Acceleration_Jerk_Standard_Deviation_Y
Frequency_Body_Acceleration_Jerk_Standard_Deviation_Z	          =	Frequency_Body_Acceleration_Jerk_Standard_Deviation_Z
Frequency_Body_Gyro_Standard_Deviation_X	                      =	Frequency_Body_Gyro_Standard_Deviation_X
Frequency_Body_Gyro_Standard_Deviation_Y	                      =	Frequency_Body_Gyro_Standard_Deviation_Y
Frequency_Body_Gyro_Standard_Deviation_Z	                      =	Frequency_Body_Gyro_Standard_Deviation_Z
Frequency_Body_Acceleration_Magnitude_Standard_Deviation	      =	Frequency_Body_Acceleration_Magnitude_Standard_Deviation
Frequency_Body_Acceleration_Jerk_Magnitude_Standard_Deviation	  =	Frequency_Body_Acceleration_Jerk_Magnitude_Standard_Deviation
Frequency_Body_Gyro_Magnitude_Standard_Deviation	              =	Frequency_Body_Gyro_Magnitude_Standard_Deviation
Frequency_Body_Gyro_Jerk_Magnitude_Standard_Deviation	          =	Frequency_Body_Gyro_Jerk_Magnitude_Standard_Deviation



 