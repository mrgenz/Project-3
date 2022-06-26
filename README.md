# Project 3
 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
Time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
The acceleration signal was separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 			
			
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
Also the Magnitude of these three-dimensional signals were calculated using the Euclidean norm. 			
			
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency domain signals.

These signals were used to estimate variables of the feature vector for each pattern:  			
_x, _Y, _Z are used to denote 3-axial signals in the X, Y and Z directions.			
