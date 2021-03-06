% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scBatch.r
\name{scBatch}
\alias{scBatch}
\title{Correct scRNA-seq count matrix subject to batch effects by sample distance matrix correction}
\usage{
scBatch(count.mat, dist.mat, weight.mat, m, max.iter = 30,
  step.size = 1e-04, tol = 1e-10)
}
\arguments{
\item{count.mat}{The original p*n batch effect data with n subjects and p RNA-seq measurements.}

\item{dist.mat}{The n*n distance matrix obtained by QuantNorm.}

\item{weight.mat}{An initial n*n weight matrix to conduct linear transformation. Default to be identity matrix if not specified.}

\item{m}{Number of groups to be divided for coordinate gradient descent. 1 < m <= n. Default to be 0.1n if not specified.}

\item{max.iter}{Maximum number of the iteration if the tolerance is not reached.}

\item{step.size}{Step size of the gradient descent algorithm.}

\item{tol}{Stopping criteria of the algorithm. The algorithm stops if the step size is smaller than tol.}
}
\value{
Returns the corrected count matrix.
}
\description{
As an extension of package 'QuantNorm', which corrects the distance matrix to obtain reasonable sample pattern, this package use gradient descent algorithm to correct count matrix by linear transformation.
}
\references{
Fei et al (2018), Mitigating the adverse impact of batch effects in sample pattern detection, Bioinformatics, <https://doi.org/10.1093/bioinformatics/bty117>.
}
\author{
Teng Fei. Email: tfei@emory.edu
}
