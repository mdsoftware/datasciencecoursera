corr <- function(directory, threshold = 0) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'threshold' is a numeric vector of length 1 indicating the
    ## number of completely observed observations (on all
    ## variables) required to compute the correlation between
    ## nitrate and sulfate; the default is 0
    
    files = list.files(directory)
    result = numeric()
    
    for (fname in files){
        
        fname <- paste(directory, "\\", fname, sep = "")
        
        d <- read.csv(fname)
        
        mask <- !is.na(d[, "sulfate"]) & !is.na(d[, "nitrate"])
        
        if (sum(mask) <= threshold) next
        
        vecX = d[, "sulfate"][mask]
        vecY = d[, "nitrate"][mask]
        
        result <- c(result, round(cor(vecX, vecY), digits=5))
        
    }
    
    
    ## Return a numeric vector of correlations
    
    result
}