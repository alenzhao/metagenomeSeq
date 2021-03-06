% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/allClasses.R
\docType{methods}
\name{posteriorProbs}
\alias{posteriorProbs}
\alias{posteriorProbs,MRexperiment-method}
\title{Access the posterior probabilities that results from analysis}
\usage{
posteriorProbs(obj)
}
\arguments{
\item{obj}{a \code{MRexperiment} object.}
}
\value{
Matrix of posterior probabilities
}
\description{
Accessing the posterior probabilities following a run through
\code{\link{fitZig}}
}
\examples{

# This is a simple demonstration 
data(lungData)
k = grep("Extraction.Control",pData(lungData)$SampleType)
lungTrim = lungData[,-k]
k = which(rowSums(MRcounts(lungTrim)>0)<30)
lungTrim = cumNorm(lungTrim)
lungTrim = lungTrim[-k,]
smokingStatus = pData(lungTrim)$SmokingStatus
mod = model.matrix(~smokingStatus)
# The maxit is not meant to be 1 - this is for demonstration/speed
settings = zigControl(maxit=1,verbose=FALSE)
fit = fitZig(obj = lungTrim,mod=mod,control=settings)
head(posteriorProbs(lungTrim))

}
\author{
Joseph N. Paulson
}

