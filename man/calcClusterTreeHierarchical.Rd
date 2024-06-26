% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcClusterTreeHierarchical.R
\name{calcClusterTreeHierarchical}
\alias{calcClusterTreeHierarchical}
\title{calcClusterTreeHierarchical}
\usage{
calcClusterTreeHierarchical(
  regionscode,
  mode = "h",
  weight = NULL,
  lpjml = c(natveg = "LPJmL4", crop = "LPJmL5"),
  clusterdata = "yield_airrig"
)
}
\arguments{
\item{regionscode}{regionscode of the regional mapping to be used.
Must agree with the regionscode of the mapping
mentioned in the madrat config! Can be retrieved via \code{regionscode()}.}

\item{mode}{Clustering type. At the moment you can choose between
complete linkage clustering (h),
single linkage clustering (s) and
Ward clustering (w).}

\item{weight}{named vector with weighting factors for each region for the cluster distribution,
e.g. weight = c(AFR = 3, EUR = 0.5).
weight > 1 will grant more cluster to a region and
weight < 1 less cluster than by default.}

\item{lpjml}{defines LPJmL version for crop/grass and natveg specific inputs}

\item{clusterdata}{similarity data to be used to determine clusters:
yield_airrig (current default) or yield_increment}
}
\value{
A spam relation matrix
}
\description{
calculates hierarchical clustering tree
}
\author{
Jan Philipp Dietrich
}
