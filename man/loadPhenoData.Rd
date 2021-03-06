% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/loadPhenoData.R
\name{loadPhenoData}
\alias{loadPhenoData}
\alias{phenoData}
\title{Load a clinical/phenotypic dataset associated with a study.}
\usage{
loadPhenoData(file, tran = TRUE, sep = "\\t")
}
\arguments{
\item{file}{Path and filename of the actual clinical file.}

\item{tran}{Boolean. If the covariates are along the columns and samples
along the rows, then tran should equal TRUE.}

\item{sep}{The separator for the file.}
}
\value{
The metadata as a dataframe.
}
\description{
Load a matrix of metadata associated with a study.
}
\examples{

dataDirectory <- system.file("extdata", package="metagenomeSeq")
clin = loadPhenoData(file.path(dataDirectory,"CHK_clinical.csv"),tran=TRUE)

}
\seealso{
\code{\link{loadMeta}}
}

