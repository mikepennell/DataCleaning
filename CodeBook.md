# Aggregations of accelerometer and gyroscope data

## Overview of original source data

The features selected for this analysis comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

# Calculated Aggregations

The set of statistics that were calculated from these signals are: 

mean: Mean value
std: Standard deviation

The mean and standard deviation were then averaged over the grouping of each activity and each subjects.   Separate means were calculated for each combination of actvity and subject. 

## Feature Names

1. ActivityName - character.  Indicates the predicted activity of the subject
	- WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
2. Subject - integer (1:30)
	- identifyier of which of the 30 subjects

###  Mean and Standard Deviation for source statistics

3. tBodyAccmeanX
4. tBodyAccmeanY
5. tBodyAccmeanZ
6. tBodyAccstdX
7. tBodyAccstdY
8. tBodyAccstdZ
9. tGravityAccmeanX
10. tGravityAccmeanY
11. tGravityAccmeanZ
12. tGravityAccstdX
13. tGravityAccstdY
14. tGravityAccstdZ
15. tBodyAccJerkmeanX
16. tBodyAccJerkmeanY
17. tBodyAccJerkmeanZ
18. tBodyAccJerkstdX
19. tBodyAccJerkstdY
20. tBodyAccJerkstdZ
21. tBodyGyromeanX
22. tBodyGyromeanY
23. tBodyGyromeanZ
24. tBodyGyrostdX
25. tBodyGyrostdY
26. tBodyGyrostdZ
27. tBodyGyroJerkmeanX
28. tBodyGyroJerkmeanY
29. tBodyGyroJerkmeanZ
30. tBodyGyroJerkstdX
31. tBodyGyroJerkstdY
32. tBodyGyroJerkstdZ
33. tBodyAccMagmean
34. tBodyAccMagstd
35. tGravityAccMagmean
36. tGravityAccMagstd
37. tBodyAccJerkMagmean
38. tBodyAccJerkMagstd
39. tBodyGyroMagmean
40. tBodyGyroMagstd
41. tBodyGyroJerkMagmean
42. tBodyGyroJerkMagstd
43. fBodyAccmeanX
44. fBodyAccmeanY
45. fBodyAccmeanZ
46. fBodyAccstdX
47. fBodyAccstdY
48. fBodyAccstdZ
49. fBodyAccJerkmeanX
50. fBodyAccJerkmeanY
51. fBodyAccJerkmeanZ
52. fBodyAccJerkstdX
53. fBodyAccJerkstdY
54. fBodyAccJerkstdZ
55. fBodyGyromeanX
56. fBodyGyromeanY
57. fBodyGyromeanZ
58. fBodyGyrostdX
59. fBodyGyrostdY
60. fBodyGyrostdZ
61. fBodyAccMagmean
62. fBodyAccMagstd
63. fBodyBodyAccJerkMagmean
64. fBodyBodyAccJerkMagstd
65. fBodyBodyGyroMagmean
66. fBodyBodyGyroMagstd
67. fBodyBodyGyroJerkMagmean
68. fBodyBodyGyroJerkMagstd