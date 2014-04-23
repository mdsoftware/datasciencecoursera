CodeBook
========

###Content of the Output File

Output file is CSV (comma separated values) file format. First line contain names of columns, other line(s) contain
data for each column.

###Columns Description

+	__N__ - number of the input source. Number in a range 1 .. 30.
+	__Activity__ - activity which was monitored on input source. Contains text values from this list:

  *	WALKING
  *	WALKING_UPSTAIRS
  *	WALKING_DOWNSTAIRS
  *	SITTING
  *	STANDING
  *	LAYING
+	__Other Columns__ - other columns are named using following syntax: _(Type of measurement)___(Suffix)_. For example: 
**tBodyAcc_mean_Y,tBodyAcc_mean_Z,tBodyAcc_std_X**... Suffix can be one of the following:
 *	__mean__ - value if the average of the measurement mean values
 *	__std__ - value is the average of the measurement standard deviation values
 *	**mean_X** - value if the average of the measurement mean values for X axis
 *	**mean_Y** - value if the average of the measurement mean values for Y axis
 *	**mean_Z** - value if the average of the measurement mean values for Z axis
 *	**std_X** - value is the average of the measurement standard deviation values for X axis
 *	**std_Y** - value is the average of the measurement standard deviation values for Y axis
 *	**std_Z** - value is the average of the measurement standard deviation values for Z axis

###Data Transformation Process

From source files (fixed width file format) accordingly with description only columns named with **std()** and **mean()** was extracted,
then data was equipped with **N** and **Activity** columns. For **Activity** column numeric values was replaced with text values.

Then both test and train datasets was merged and using **SQLDF** package grouped and averages was calculated for each column.






