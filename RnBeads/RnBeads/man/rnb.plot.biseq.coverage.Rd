% Generated by roxygen2 (4.0.2): do not edit by hand
\name{rnb.plot.biseq.coverage}
\alias{rnb.plot.biseq.coverage}
\title{rnb.plot.biseq.coverage}
\usage{
rnb.plot.biseq.coverage(rnbs.set, sample, type = "sites",
  writeToFile = FALSE, numeric.names = FALSE, covg.lists = NULL, ...)
}
\arguments{
\item{rnbs.set}{RnBiseqSet object}

\item{sample}{unique sample identifier. In case \code{rnb.getOption("identifiers.column")}
is not \code{NULL}, \code{sample} should attain values from the corresponding column,
or \code{colnames(meth(rnb.set))} otherwise}

\item{type}{\code{character} singleton. If \code{site} the coverage
information is plotted for each methylation site. Otherwise
should be one of the regions returned by \code{rnb.region.types}}

\item{writeToFile}{flag specifying whether the output should be saved as \code{\linkS4class{ReportPlot}}}

\item{numeric.names}{if \code{TRUE} and \code{writeToFile} is \code{TRUE}substitute the plot options in the plot file name with digits}

\item{covg.lists}{if available, the output of \code{\link{rnb.execute.quality}}}

\item{...}{other arguments to \code{\link{createReportPlot}}}
}
\value{
plot as an object of type \code{\linkS4class{ReportPlot}} if \code{writeToFile} is \code{TRUE} and of class
			\code{\link{ggplot}} otherwise.
TODO add examples
}
\description{
Plots the sequencing coverage of the RnBiseqSet object across the genomic coordinate
}
\author{
Pavlo Lutsik
}

