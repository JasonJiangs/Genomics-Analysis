# Install with BioConductor: https://bioconductor.org/packages/release/bioc/html/DESeq2.html
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("DESeq2")

# Install from GitHub: https://github.com/mikelove/DESeq2
#install.packages('devtools')  # devtools is requirement
devtools::install_github('mikelove/DESeq2@d5f16fa')  

# For conflicts
# remove.packages('xxx')
# BiocManager::install('xxx')


getwd()
setwd("I:/Zang's Lab/Genomics-Analysis/DESeq2/data")
getwd()

# Tutorial re-write from https://lashlock.github.io/compbio/R_presentation.html
library(DESeq2)
library(ggplot2)

# Data link: https://bioconnector.github.io/workshops/data.html
countsName <- "https://bioconnector.github.io/workshops/data/airway_scaledcounts.csv"
download.file(countsName, destfile = "airway_scaledcounts.csv", method = "auto")

countData <- read.csv(file = 'airway_scaledcounts.csv', header = TRUE, sep = ",")
head(countData)

metaDataName <- "https://bioconnector.github.io/workshops/data/airway_metadata.csv"
download.file(metaDataName, destfile = "airway_metadata.csv", method = "auto")

metaData <- read.csv('airway_metadata.csv', header = TRUE, sep = ",")
metaData

dds <- DESeqDataSetFromMatrix(countData=countData, 
                              colData=metaData, 
                              design=~dex, tidy = TRUE)

