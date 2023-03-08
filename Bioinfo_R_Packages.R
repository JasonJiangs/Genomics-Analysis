options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
if(! require("devtools")) install.packages("devtools")
if(! require("reshape2")) install.packages("reshape2")
if(! require("ggplot2")) install.packages("ggplot2")
if(! require("pheatmap")) install.packages("pheatmap")
if(! require("ggfortify")) install.packages("ggfortify")
if(! require("stringr")) install.packages("stringr")
if(! require("survival")) install.packages("survival")
if(! require("survminer")) install.packages("survminer")
if(! require("lars")) install.packages("lars")
if(! require("glmnet")) install.packages("glmnet")

if(! require("timeROC")) install.packages("timeROC")
if(! require("ggpubr")) install.packages("ggpubr")

if(! require("randomForest")) install.packages("randomForest")
if(! require("ROCR")) install.packages("ROCR")
if(! require("Hmisc")) install.packages("Hmisc")

if(! require("caret")) install.packages("caret")
# if(! require("genefilter")) install.packages("genefilter")
if(! require("ggstatsplot")) install.packages("ggstatsplot")

### 下面的包是为了临床三线表
if(! require("tableone")) install.packages("tableone")
## 网络不好，就不要安装了。
## 而且Windows电脑安装 rJava 也经常是需要人指导的。
# https://github.com/rstudio/rstudio/issues/2254
if(! require("rJava")) install.packages("rJava")
if(require('rJava')){
  
  # https://cran.r-project.org/src/contrib/Archive/ReporteRs/
  if(! require("ReporteRs")) install.packages("ReporteRs")
  devtools::install_github('davidgohel/ReporteRsjars')
  devtools::install_github('davidgohel/ReporteRs')
}


library(devtools)
source("http://bioconductor.org/biocLite.R")
## 如果你的网络实在是太差，试试看：
# install.packages("BiocInstaller",repos="http://bioconductor.org/packages/3.7/bioc")
## 很可惜你在中国大陆，不得不承受这个痛苦。

options(BioC_mirror="https://mirrors.ustc.edu.cn/bioc/")
library('BiocInstaller')
if(! require('edgeR')){
  
  biocLite(c('airway','DESeq2','edgeR','limma'))
}

if(! require("CLL")) biocLite("CLL")
if(! require("org.Hs.eg.db")) biocLite('org.Hs.eg.db')
library(BiocInstaller)
options(BioC_mirror="https://mirrors.ustc.edu.cn/bioc/")
if(! require("maftools")) biocLite("maftools")
if(! require("RTCGA")) biocLite("RTCGA")
if(! require("RTCGA.clinical")) biocLite("RTCGA.clinical")
# https://bioconductor.org/packages/3.6/data/experiment/src/contrib/RTCGA.clinical_20151101.8.0.tar.gzn
if(! require("RTCGA.miRNASeq")) biocLite("RTCGA.miRNASeq")
if(! require("maftools")) biocLite("maftools")
if(! require("genefilter")) biocLite("genefilter")


# Then from : https://github.com/ShixiangWang
# You don't need run the codes below, I will explain to you face to face.

source("http://bioconductor.org/biocLite.R")
packs = c("devtools", "reshape2", "ggplot2", "pheatmap", "ggfortify", "stringr", "survival",
          "survminer", "lars", "glmnet", "timeROC", "ggpubr", "randomForest", "ROCR", "genefilter",
          "Hmisc", "caret", "airway","DESeq2","edgeR","limma", "CLL", "org.Hs.eg.db", "maftools")
if(! require(pacman)) install.packages("pacman", dependencies = TRUE)
pacman::p_load(packs, dependencies=TRUE, character.only = TRUE)
# check
pacman::p_loaded(packs, character.only = TRUE)
all(pacman::p_loaded(packs, character.only = TRUE))