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

View(g)
class(g)
str(class(g))
str(g)
