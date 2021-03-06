% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/memories.R
\name{test}
\alias{test}
\alias{test_beta}
\alias{test_binomial}
\title{Test}
\usage{
test(...)

test_beta(mem, nFeatures, thresh, acc, LR, TR, FR = NULL)

test_binomial(mem, nFeatures, thresh, acc, LR, TR, FR = NULL)
}
\arguments{
\item{...}{Arugments passed to approriate functions based on type-checking. See details.}

\item{mem}{Matrix of memory strengths.}

\item{nFeatures}{Number of features the memory for each item has}

\item{thresh}{Matrix of memory thresholds. Threshold is the number of active features
needed to support pattern completetion}

\item{acc}{Logical matrix of performance for previous test}

\item{LR}{Learning Rate. Gives the probability of learning a new features
through practice}

\item{TR}{Threshold Reduction rate. Describes the probability of removing the need
 for a remembering a particular feature following successfull recall}

\item{FR}{Forgetting Rate. Gives the probability of forgetting a feature}

\item{thresh}{Matrix of memory thresholds. Threshold is the number of active features
needed to support pattern completetion. Must hold integer values.}

\item{acc}{Logical matrix of performance for previous test}

\item{TR}{Threshold Reduction rate. Describes the probability of removing the need
for a remembering a particular feature following successfull recall}
}
\value{
List of two matrices. mem is a matrix of memory strengths following succcesful
 recall. thresh is a matrix of feature thresholds following succesful recall.
}
\description{
Effects of Testing on un-encoded features and thresholds
}
\details{
\code{test} is a conveince function, and will attempt to type-check
the code{mem} matrix to call the appropriate function (test_beta for doubles,
test_binomial for integers).

\code{test_beta} and \code{test_binomial} can (and should) be called directly though,
especially when fitting models and computational time matters. See Functions section
for more details.
}
\section{Functions}{
\itemize{
\item \code{test_beta}: \code{test_beta} is designed to be used with a matrix of
continous feature and threhsold values (represented as doubles) drawn from
a beta distribution

\item \code{test_binomial}: \code{test_binomial} is designed to be used with a matrix of
discrete feature and threshold values (represented as integers) drawn from
a binomial distribution
}}

