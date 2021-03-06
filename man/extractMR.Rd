% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mergeMRexperiments.R
\name{extractMR}
\alias{extractMR}
\title{Extract the essentials of an MRexperiment.}
\usage{
extractMR(obj)
}
\arguments{
\item{obj}{MRexperiment-class object.}
}
\value{
\itemize{A list containing:
\item     counts        : Count data
\item     librarySize         : The column sums / library size / sequencing depth 
\item     normFactors          : The normalization scaling factors
\item     pheno  : phenotype table
\item     feat  : feature table
}
}
\description{
Extract the essentials of an MRexperiment.
}
\examples{

data(mouseData)
head(metagenomeSeq:::extractMR(mouseData))

}

