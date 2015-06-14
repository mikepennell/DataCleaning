# DataCleaning
Data Cleaning repo for programming assignment for the Getting and Cleaning Data course at Coursera.  

## Overview

The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The project includes

1. a tidy data set as described below
2. a code book (CodeBook.md) that describes the variables, the data, and the transformations performed to clean up the data

One of the most exciting areas in all of data science right now is wearable computing.  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data from the link below represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained

# Data

Overview of the data set

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Link to the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Version

* 1.0 Initial Version

## Usage

$ git clone https://github.com/mikepennell/DataCleaning.git

## Contributors

Mike Pennell

## Installation

1. Clone the DataCleaning repo
2. Set the working directory

## Instructions

Execute the run_analysis.R script which will perform the following:
+ Downloads the data
+ Merges the training and the test sets to create one data set
+ Merges the subject and activity data into the dataset
+ Extracts only the measurements of the mean and standard deviation for each measurement
+ Mutates the data to include descriptive activity names
+ Appropriately labels the data set with descriptive variable names
+ Creates the CleanDataCourseProject.txt tidy data set with the average of each variable for each activity and each subject
