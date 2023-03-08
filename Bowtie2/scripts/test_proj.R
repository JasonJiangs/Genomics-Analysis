BiocManager::install("Rbowtie2")

# Tutorial from https://www.bioconductor.org/packages/devel/bioc/vignettes/Rbowtie2/inst/doc/Rbowtie2-Introduction.html#:~:text=An%20Example%20Workflow%20by%20Using%20Rbowtie2

getwd()
setwd("I:/Zang's Lab/Genomics-Analysis/Bowtie2/data")
getwd()

library(Rbowtie2)
help(Rbowtie2)
??Rbowtie2

td <- tempdir()
reads_1 <- system.file(package="Rbowtie2", "extdata", "adrm", "reads_1.fq")
reads_2 <- system.file(package="Rbowtie2", "extdata", "adrm", "reads_2.fq")
(adapters <- 
    identify_adapters(file1=reads_1,file2=reads_2,
                      basename=file.path(td,"reads"),
                      "--threads 3",overwrite=TRUE))
