#question 1
#setwd
setwd("C://Users//IT2412421//Desktop//IT24102421 Lab 8")

#import dataset
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)
#calculate the population mean of laptop bag weights
popmn<-mean(Weight.kg.)

#Calculate the population variance
popvar<-var(Weight.kg.)

popmn
popvar

#question 2
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste("s",i))
}

#assign column names to the sample matrix
colnames(samples)<-n
s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

s.means
s.vars

#question 3
#Mean of the 25 sample means
samplesmean<-mean(s.means)
 #variance of the25 sample means
samplevars<-var(s.means)

#Display popuation mean and mean of sample means
popmn
samplesmean

#where n=6(sample size)
truevar<-popvar/6

samplevars
#truevar

