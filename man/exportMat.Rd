% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exportMat.R
\name{exportMat}
\alias{exportMat}
\alias{exportMatrix}
\title{Export the normalized MRexperiment dataset as a matrix.}
\usage{
exportMat(obj, log = TRUE, norm = TRUE, sep = "\\t",
  file = "~/Desktop/matrix.tsv")
}
\arguments{
\item{obj}{A MRexperiment object or count matrix.}

\item{log}{Whether or not to log transform the counts - if MRexperiment object.}

\item{norm}{Whether or not to normalize the counts - if MRexperiment object.}

\item{sep}{Separator for writing out the count matrix.}

\item{file}{Output file name.}
}
\value{
NA
}
\description{
This function allows the user to take a dataset of counts and output the
dataset to the user's workspace as a tab-delimited file, etc.
}
\examples{

data(lungData)
dataDirectory <- system.file("extdata", package="metagenomeSeq")
exportMat(lungData[,1:5],file=file.path(dataDirectory,"tmp.tsv"))
head(read.csv(file=file.path(dataDirectory,"tmp.tsv"),sep="\\t"))

}
\seealso{
\code{\link{cumNorm}}
}

