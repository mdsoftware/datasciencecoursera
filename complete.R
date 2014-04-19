complete <- function(directory, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2  1041
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    
    ids <- numeric()
    counts <- numeric()
    
    for (n in id){
        
        fname <- paste(directory, "\\", formatC(n, width=3, flag="0"), ".csv", sep = "")
        
        if (!file.exists(fname)) next
        
        d <- read.csv(fname)
        count<- sum(!is.na(d[, "sulfate"]) & !is.na(d[, "nitrate"]))
        
        ids <- c(ids, n)
        counts <- c(counts, count)
    }
    
    result <- data.frame(ids, counts)
    names(result) <- c("id", "nobs")
    
    result
    
}