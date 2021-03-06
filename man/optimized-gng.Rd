% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/gng.R
\name{OptimizedGNG}
\alias{OptimizedGNG}
\title{Constructor of Optimized GrowingNeuralGas object.}
\usage{
OptimizedGNG(x = NULL, labels = c(), beta = 0.99, alpha = 0.5,
  max.nodes = 1000, eps.n = 6e-04, eps.w = 0.05, max.edge.age = 200,
  train.online = FALSE, max.iter = 200, dim = 0,
  min.improvement = 0.001, lambda = 200, verbosity = 0, seed = -1,
  value.range = c(0, 1))
}
\arguments{
\item{x}{Passed data (matrix of data.frame) for offline training}

\item{labels}{Every example can be associated with labels that are added to nodes later. By default empty}

\item{beta}{Decrease the error variables of all node
nodes by this fraction (forgetting rate). Default 0.99}

\item{alpha}{Decrease the error variables of the nodes neighboring to
the newly inserted node by this fraction. Default 0.5}

\item{max.nodes}{Maximum number of nodes
(after reaching this size it will continue running, but new noes won't be added)}

\item{eps.n}{Strength of adaptation of neighbour node. Default \code{0.0006}}

\item{eps.w}{Strength of adaptation of winning node. Default \code{0.05}}

\item{max.edge.age}{Maximum edge age. Decrease to increase speed of change of graph topology. Default \code{200}}

\item{train.online}{If used will run in online fashion. Default \code{FALSE}}

\item{max.iter}{If training offline will stop if exceedes max.iter iterations. Default \code{200}}

\item{dim}{Used for training online, specifies dataset example dimensionality}

\item{min.improvement}{Used for offline (default) training.
Controls stopping criterion, decrease if training stops too early. Default \code{1e-3}}

\item{lambda}{New vertex is added every lambda iterations. Default 200}

\item{verbosity}{How verbose should the process be, as integer from \eqn{[0,6]}, default: \code{0}}

\item{seed}{Seed for internal randomization}

\item{value.range}{All example features should be in this range, required for optimized version of the algorithm. Default \code{(0,1)}}
}
\description{
Construct simplified and optimized GNG object. Can be used to train offline, or online. Data dimensionality shouldn't be too big, if
it is consider using dimensionality reduction techniques.
}
\examples{
\dontrun{
# Train online optimizedGNG. All values in this dataset are in the range (-4.3, 4.3)
X <- gng.preset.sphere(100)
gng <- OptimizedGNG(train.online = TRUE, value.range=c(min(X), max(X)), dim=3, max.nodes=20)
insertExamples(gng, X)
run(gng)
Sys.sleep(10)
pause(gng)
}
}

