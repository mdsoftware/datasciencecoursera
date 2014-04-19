pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    data <- numeric()
    
    for (n in id){
        
        fname <- paste(directory, "\\", formatC(n, width=3, flag="0"), ".csv", sep = "")
        
        if (!file.exists(fname)) next
        
        d <- read.csv(fname)
        d <- d[, pollutant]
        d <- d[!is.na(d)]
        
        data <- c(data, d)
    }
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
    
    round(mean(data), digits = 3)
    
}

