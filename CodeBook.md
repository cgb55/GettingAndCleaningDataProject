# Code Book

This document describes each of the variable (column) names in the resulting tidy dataset
of the script `run_analysis.R` when applied to the specified original data, see `README.md`
for fuller details of the original data and running the script.

`SubjectId` (1st column)

 + integer representing the subject (1-30)

`ActivityName` (2nd column)

 + factor representing the activity (`WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`)

The remaining variables are of the form:

`MeanOf...`  (3rd to 68th columns)

  + numeric representing the mean grouped by SubjectId and AcivityName of the mapped variable in the first data set.

For example,
```
MeanOfTimeBodyAccelerometerMeansInXDirection
```
in the second data set is the grouped mean of
```
TimeBodyAccelerometerMeansInXDirection
```
from the first dataset. A full list of these variables is given below.

The names in the first data set have been derived from those in the original data set according to the code
from lines 30 to 50 in the script. So, for example,
```
TimeBodyAccelerometerMeansInXDirection
```
is equivalent to,
```
tBodyAcc-mean()-X
```
And thus `MeanOfTimeBodyAccelerometerMeansInXDirection` is the mean grouped by subject and activity
of `tBodyAcc-mean()-X` from the original data files.

For full details of the original variable names please see `features_info.txt` in the
original data folder.


The full list of variables in column order (3rd to 68th) are:
```
MeanOfTimeBodyAccelerometerMeansInXDirection                       
MeanOfTimeBodyAccelerometerMeansInYDirection                       
MeanOfTimeBodyAccelerometerMeansInZDirection                       
MeanOfTimeBodyAccelerometerStandardDeviationsInXDirection          
MeanOfTimeBodyAccelerometerStandardDeviationsInYDirection          
MeanOfTimeBodyAccelerometerStandardDeviationsInZDirection          
MeanOfTimeGravityAccelerometerMeansInXDirection                    
MeanOfTimeGravityAccelerometerMeansInYDirection                    
MeanOfTimeGravityAccelerometerMeansInZDirection                    
MeanOfTimeGravityAccelerometerStandardDeviationsInXDirection       
MeanOfTimeGravityAccelerometerStandardDeviationsInYDirection       
MeanOfTimeGravityAccelerometerStandardDeviationsInZDirection       
MeanOfTimeBodyAccelerometerJerkMeansInXDirection                   
MeanOfTimeBodyAccelerometerJerkMeansInYDirection                   
MeanOfTimeBodyAccelerometerJerkMeansInZDirection                   
MeanOfTimeBodyAccelerometerJerkStandardDeviationsInXDirection      
MeanOfTimeBodyAccelerometerJerkStandardDeviationsInYDirection      
MeanOfTimeBodyAccelerometerJerkStandardDeviationsInZDirection      
MeanOfTimeBodyGyroscopeMeansInXDirection                           
MeanOfTimeBodyGyroscopeMeansInYDirection                           
MeanOfTimeBodyGyroscopeMeansInZDirection                           
MeanOfTimeBodyGyroscopeStandardDeviationsInXDirection              
MeanOfTimeBodyGyroscopeStandardDeviationsInYDirection              
MeanOfTimeBodyGyroscopeStandardDeviationsInZDirection              
MeanOfTimeBodyGyroscopeJerkMeansInXDirection                       
MeanOfTimeBodyGyroscopeJerkMeansInYDirection                       
MeanOfTimeBodyGyroscopeJerkMeansInZDirection                       
MeanOfTimeBodyGyroscopeJerkStandardDeviationsInXDirection          
MeanOfTimeBodyGyroscopeJerkStandardDeviationsInYDirection          
MeanOfTimeBodyGyroscopeJerkStandardDeviationsInZDirection          
MeanOfTimeBodyAccelerometerMagnitudeMeans                          
MeanOfTimeBodyAccelerometerMagnitudeStandardDeviations             
MeanOfTimeGravityAccelerometerMagnitudeMeans                       
MeanOfTimeGravityAccelerometerMagnitudeStandardDeviations          
MeanOfTimeBodyAccelerometerJerkMagnitudeMeans                      
MeanOfTimeBodyAccelerometerJerkMagnitudeStandardDeviations         
MeanOfTimeBodyGyroscopeMagnitudeMeans                              
MeanOfTimeBodyGyroscopeMagnitudeStandardDeviations                 
MeanOfTimeBodyGyroscopeJerkMagnitudeMeans                          
MeanOfTimeBodyGyroscopeJerkMagnitudeStandardDeviations             
MeanOfFrequencyBodyAccelerometerMeansInXDirection                  
MeanOfFrequencyBodyAccelerometerMeansInYDirection                  
MeanOfFrequencyBodyAccelerometerMeansInZDirection                  
MeanOfFrequencyBodyAccelerometerStandardDeviationsInXDirection     
MeanOfFrequencyBodyAccelerometerStandardDeviationsInYDirection     
MeanOfFrequencyBodyAccelerometerStandardDeviationsInZDirection     
MeanOfFrequencyBodyAccelerometerJerkMeansInXDirection              
MeanOfFrequencyBodyAccelerometerJerkMeansInYDirection              
MeanOfFrequencyBodyAccelerometerJerkMeansInZDirection              
MeanOfFrequencyBodyAccelerometerJerkStandardDeviationsInXDirection 
MeanOfFrequencyBodyAccelerometerJerkStandardDeviationsInYDirection 
MeanOfFrequencyBodyAccelerometerJerkStandardDeviationsInZDirection 
MeanOfFrequencyBodyGyroscopeMeansInXDirection                      
MeanOfFrequencyBodyGyroscopeMeansInYDirection                      
MeanOfFrequencyBodyGyroscopeMeansInZDirection                      
MeanOfFrequencyBodyGyroscopeStandardDeviationsInXDirection         
MeanOfFrequencyBodyGyroscopeStandardDeviationsInYDirection         
MeanOfFrequencyBodyGyroscopeStandardDeviationsInZDirection         
MeanOfFrequencyBodyAccelerometerMagnitudeMeans                     
MeanOfFrequencyBodyAccelerometerMagnitudeStandardDeviations        
MeanOfFrequencyBodyBodyAccelerometerJerkMagnitudeMeans             
MeanOfFrequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviations
MeanOfFrequencyBodyBodyGyroscopeMagnitudeMeans                     
MeanOfFrequencyBodyBodyGyroscopeMagnitudeStandardDeviations        
MeanOfFrequencyBodyBodyGyroscopeJerkMagnitudeMeans                 
MeanOfFrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviations
```
