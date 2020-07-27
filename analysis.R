#### Tebucheck analysis for a population of uncharacterisied Aspergillus fumigatus isolates ####

#Load ggplot (install packages where required)
library(ggplot2)

# Set working directory where tebucheck_example.csv is stored
setwd("~/path/to/data")

# reading in data (ideally the user will provde data in a .csv file in wide format)
dat<- read.csv(file = 'tebucheck_example.csv')

## Basic violin plot
p <- ggplot(dat, aes(x=Allele, y=SUM, fill=Allele)) + 
    geom_violin()

## Add in data points to clarify distribution
p <- p + geom_dotplot(binaxis='y', binwidth = 0.1, stackdir='center', dotsize=0.5, fill = "grey") + theme_minimal()

# Generate plot
p
  
    
  