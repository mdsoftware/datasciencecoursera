run_analysis.R
==============

###Prerequisites

**sqldf** package must be installed.

###Running script

Before running the script be sure that all global variables are match your environment. Default values assumes that folder with data
lies in R working folder (use **setwd()**), and output file with name **tidydata.txt** will be also created in the working folder.

```R
## Path to data folder or path inside working folder
datapath <- "UCI HAR Dataset"

## Path separator, "\\" for Windows, "/" for *nix
pathSeparator <- "\\"

## Output file name (CSV format)
outputFile <- "tidydata.txt"

```

###NOTE

Output file will be rewritten without prompt.
