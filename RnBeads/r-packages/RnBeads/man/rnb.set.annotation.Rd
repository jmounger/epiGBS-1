% Generated by roxygen2 (4.0.2): do not edit by hand
\name{rnb.set.annotation}
\alias{rnb.set.annotation}
\title{rnb.set.annotation}
\usage{
rnb.set.annotation(type, regions, description = NULL, assembly = "hg19")
}
\arguments{
\item{type}{One-element \code{character} vector giving the name of the annotation. If this region type is
already available, it will be overwritten for the current session. The type cannot be one of
\code{"CpG"}, \code{"probes450"} or \code{"controls450"}, because these names are reserved for the
annotation tables of CpG dinucleotides, and Infinium methylation and control probes, respectively.}

\item{regions}{BED file defining regions (see \emph{Details}). Alternatively, the value of this parameter can be
a table of genomic regions in the form of a \code{\link{data.frame}}, containing at least the
following three columns - \code{"chromosome"}, \code{"start"} and \code{"end"} (notice the lower
case). The \code{"chromosome"} column must be a \code{character} or \code{factor} vector that
lists chromosome names. The \code{"start"} and \code{"end"} columns are expected to contain
genomic positions as \code{integer}s. The row names of this \code{data.frame} are used as region
identifiers.}

\item{description}{Optional; short description in the form of a non-empty \code{character} vector. The elements in
this vector are concatenated without a separator to form the description of the annotation.}

\item{assembly}{Genome assembly of interest. See \code{\link{rnb.get.assemblies}} for the list of supported
                   genomes.}
}
\description{
Adds or replaces a region annotation table.
}
\details{
In case the parameter \code{regions} specifies an existing BED file, regions are loaded from this file. The number of
columns defined must be at least 3. Columns after the sixth one, if present, are dropped. The columns are given the
following names: \code{"chromosome"}, \code{"start"}, \code{"end"}, \code{"id"}, \code{"score"} and \code{"strand"}.

The annotation tables in \pkg{RnBeads} focus on chromosomes \code{"chr1"}, \code{"chr2"}, ..., \code{"chr22"},
\code{"chrX"} and \code{"chrY"}. Regions on other chromosomes are ignored. This function also recognizes the
convention of chromosome names such as \code{"1"}, adopted, for example, by \href{http://www.ensembl.org/}{Ensembl}.
Apart from this, the region definition table is not examined in details by this function; therefore, regions located
on unsupported chromosomes or having invalid (e.g., negative) genomic coordinates are simply not mapped to any sites
or probes.
}
\examples{
\dontrun{
my.regions <- data.frame(
    chromosome = c("chr1", "chr1"),
    start = c(49242278L, 49242372L),
    end = c(49242590L, 49242810L),
    rownames = c("BEND5E1", "CpG:38"))
txt <- "First exon of the BEND5 gene and an overlapping CpG island."
rnb.set.annotation("my regions", my.regions, txt)
}
}
\author{
Yassen Assenov
}
\seealso{
\code{\link{rnb.get.annotation}} for extracting annotation;
  \code{\link{rnb.region.types}} for all loaded region types in a genome assembly
}

