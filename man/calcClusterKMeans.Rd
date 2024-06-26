% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcClusterKMeans.R
\name{calcClusterKMeans}
\alias{calcClusterKMeans}
\title{calcClusterKMeans}
\usage{
calcClusterKMeans(
  regionscode,
  ncluster,
  weight = NULL,
  cpr = NULL,
  seed = 42,
  lpjml = c(natveg = "LPJmL4", crop = "LPJmL5"),
  clusterdata = "yield_airrig"
)
}
\arguments{
\item{regionscode}{regionscode of the regional mapping to be used.
Must agree with the regionscode of the mapping
mentioned in the madrat config!
Can be retrieved via \code{regionscode()}.}

\item{ncluster}{The desired total number of clusters.}

\item{weight}{named vector with weighting factors for each region
for the cluster distribution, e.g. weight=c(AFR=3,EUR=0.5).
weight > 1 will grant more cluster to a region and
weight < 1 less cluster than by default.}

\item{cpr}{cells-per-region information as returned by toolClusterPerRegionManual.
Weight and ncluster are ignored in case that cpr is provided!}

\item{seed}{a single value, interpreted as an integer, or NULL, to define seed for random calculations}

\item{lpjml}{defines LPJmL version for crop/grass and natveg specific inputs}

\item{clusterdata}{similarity data to be used to determine clusters: yield_airrig (current default)
or yield_increment}
}
\value{
A mapping between regions and clusters
}
\description{
Performs MAgPIE kmeans clustering and
             calculates corresponding spam relation matrix
}
\seealso{
\code{\link{toolClusterPerRegionManual}}, \code{\link{calcClusterHierarchical}}
}
\author{
Jan Philipp Dietrich
}
