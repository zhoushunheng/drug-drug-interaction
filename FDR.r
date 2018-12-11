data=read.table(file="E:/¿ÎÌâ/CMIresult/basal-like_test.txt",stringsAsFactors=FALSE,header=F)
pval=data[,3]
adjusted=p.adjust(pval,method="fdr",n=length(pval));
length(which(adjusted<0.01))
length(which(adjusted<0.05))

p<-which(pval<0.01)
a<-data[which(pval<0.01),1]
b<-data[which(pval<0.01),3]
c<-cbind(a,b)
write.table(c,file="E:/¿ÎÌâ/p_CMI/test.txt",col.names=FALSE,row.names=FALSE)
length(which(pval<0.05))
length(which(adjusted<0.01))
length(which(adjusted<0.05))
head(pval)
head(adjusted)