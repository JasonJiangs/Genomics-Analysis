a=c(1,2,3)
b=c(1,'a',2.0)
c = 1:10
cc = seq(1,10)
d = LETTERS[1:10]
e = ('jimmy')
f = 1

g = 1:10
dim(g) = c(2,5)
pheatmap::pheatmap(g)
# becomes string
g[1,2]='5'
pheatmap::pheatmap(g)

g[,3]
View(g)
g[,2]
g[c(T,F),4]
g[1,c(T,F,F,T,T)]


options()$repos
options()$BioC_mirror
g = options()
length(g)
g$repos
lapply(g, length)
unlist(lapply(g, length))
as.numeric(unlist(lapply(g, length)))
index1 = as.numeric(unlist(lapply(g, length))) > 2
g = g[index1]
View(g)
g[1]
g[2][1]
g[[3]][[1]]
g[[3]]

View(g)
class(g)
str(class(g))
str(g)


is.matrix(g)
is.data.frame(g)
g = as.data.frame(g)
is.data.frame(g)

names(options())


# read a table input t, get all rows whose column "Assay_Type" is "RNA-Seq"
grep('RNA-Seq', t$Assay_Type)
# grepl(), returns all True/False

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.16")

