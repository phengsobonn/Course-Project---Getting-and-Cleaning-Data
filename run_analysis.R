
train <- read.table("X_train.txt")			##read "train" data
test <- read.table("X_test.txt")			##read "test" data
merged <- rbind(train, test)				##merge the two datasets

features <- read.table("features.txt")		##read "features" data
group <- grep("mean|std", features$V2)		##find out which columns are measurements of mean and std
extract <- merged[group]				##extract a dataset consisting of only mearsurements of mean and std

library(dplyr)
extract <- rename(extract, tBodyAccMeanX = V1, tBodyAccMeanY = V2, tBodyAccMeanZ = V3,
		tBodyAccStdX = V4, tBodyAccStdY = V5, tBodyAccStdZ = V6, tGravAccMeanX = V41,
		tGravAccMeanY = V42, tGravAccMeanZ = V43, tGravAccStdX = V44, tGravAccStdY = V45,
		tGravAccStdZ = V46, tBodyAccJerkMeanX = V81, tBodyAccJerkMeanY = V82, tBodyAccJerkMeanZ = V83,
		tBodyAccJerkStdX = V84, tBodyAccJerkStdY = V85, tBodyAccJerkStdZ = V86, tBodyGyroMeanX = V121,
		tBodyGyroMeanY = V122, tBodyGyroMeanZ = V123, tBodyGyroStdX = V124, tBodyGyroStdY = V125,
		tBodyGyroStdZ = V126, tBodyGyroJerkMeanX = V161, tBodyGyroJerkMeanY = V162, tBodyGyroJerkMeanZ = V163,
		tBodyGyroJerkStdX = V164, tBodyGyroJerkStdY = V165, tBodyGyroJerkStdZ = V166, tBodyAccMagMean = V201,
		tBodyAccMagStd = V202, tGravAccMagMean = V214, tGravAccMagStd = V215, tBodyAccJerkMagMean = V227,
		tBodyAccJerkMagStd = V228, tBodyGyroMagMean = V240, tBodyGyroMagStd = V241, tBodyGyroJerkMagMean = V253,
		tBodyGyroJerkMagStd = V254, fBodyAccMeanX = V266, fBodyAccMeanY = V267, fBodyAccMeanZ = V268,
		fBodyAccStdX = V269, fBodyAccStdY = V270, fBodyAccStdZ = V271, fBodyAccMeanFreqX = V294,
		fBodyAccMeanFreqY = V295, fBodyAccMeanFreqZ = V296, fBodyAccJerkMeanX = V345, fBodyAccJerkMeanY = V346,
		fBodyAccJerkMeanZ = V347, fBodyAccJerkStdX = V348, fBodyAccJerkStdY = V349, fBodyAccJerkStdZ = V350,
		fBodyAccJerkMeanFreqX = V373, fBodyAccJerkMeanFreqY = V374, fBodyAccJerkMeanFreqZ = V375,
		fBodyGyroMeanX = V424, fBodyGyroMeanY = V425, fBodyGyroMeanZ = V426, fBodyGyroStdX = V427,
		fBodyGyroStdY = V428, fBodyGyroStdZ = V429, fBodyGyroMeanFreqX = V452, fBodyGyroMeanFreqY = V453,
		fBodyGyroMeanFreqZ = V454, fBodyAccMagMean = V503, fBodyAccMagStd = V504, fBodyAccMagMeanFreq = V513,
		fBodyBodyAccJerkMagMean = V516, fBodyBodyAccJerkMagStd = V517, fBodyBodyAccJerkMagMeanFreq = V526,
		fBodyBodyGyroMagMean = V529, fBodyBodyGyroMagStd = V530, fBodyBodyGyroMagMeanFreq = V539,
		fBodyBodyGyroJerkMagMean = V542, fBodyBodyGyroJerkMagStd = V543, fBodyBodyGyroJerkMagMeanFreq = V552)


sapply(select(extract, 1:79), mean)
