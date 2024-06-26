% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nsBeta.R
\name{Neutrosophic Beta}
\alias{Neutrosophic Beta}
\alias{dnsBeta}
\alias{pnsBeta}
\alias{qnsBeta}
\alias{rnsBeta}
\title{Neutrosophic Beta Distribution}
\usage{
dnsBeta(x, shape1, shape2)

pnsBeta(q, shape1, shape2, lower.tail = TRUE)

qnsBeta(p, shape1, shape2)

rnsBeta(n, shape1, shape2)
}
\arguments{
\item{x}{a vector or matrix of observations for which the pdf needs to be computed.}

\item{shape1}{the first shape parameter, which must be a positive interval.}

\item{shape2}{the second shape parameter, which must be a positive interval.}

\item{q}{a vector or matrix of quantiles for which the cdf needs to be computed.}

\item{lower.tail}{logical; if TRUE (default), probabilities are
\eqn{P(X \leq x)}; otherwise, \eqn{P(X >x)}.}

\item{p}{a vector or matrix of probabilities for which the quantile needs to be computed.}

\item{n}{number of random values to be generated.}
}
\value{
\code{dnsBeta} gives the density function

\code{pnsBeta} gives the distribution function

\code{qnsBeta} gives the quantile function

\code{rnsBeta} generates random values from the neutrosophic Beta distribution.
}
\description{
Density, distribution function, quantile function and random
generation for the neutrosophic Beta distribution with shape parameters
\code{shape1} = \eqn{\alpha_N} and \code{shape2} = \eqn{\beta_N}.
}
\details{
The neutrosophic beta distribution with parameters \eqn{\alpha_N} and
\eqn{\beta_N} has the probability density function
\deqn{f_N(x) = \frac{1}{B(\alpha_N, \beta_N)} x^{\alpha_N - 1} (1 - x)^{\beta_N - 1}}
for \eqn{\alpha_N \in (\alpha_L, \alpha_U)}, the first shape parameter which
must be a positive interval, and \eqn{\beta_N \in (\beta_L, \beta_U)},
the second shape parameter which must also be a positive interval, and
\eqn{0 \le x \le 1}. The function \eqn{B(a, b)}
returns the beta function and can be calculated using \code{\link{beta}}.
}
\examples{

dnsBeta(x = c(0.1, 0.2), shape1 = c(1, 1), shape2 = c(2, 2))
dnsBeta(x = 0.1, shape1 = c(1, 1), shape2 = c(2, 2))

x <- matrix(c(0.1, 0.1, 0.2, 0.3, 0.5, 0.5), ncol = 2, byrow = TRUE)
dnsBeta(x, shape1 = c(1, 2), shape2 = c(2, 3))


pnsBeta(q = c(0.1, 0.1), shape1 = c(3, 1), shape2 = c(1, 3), lower.tail = FALSE)
pnsBeta(x, shape1 = c(1, 2), shape2 = c(2, 2))


qnsBeta(p = 0.1, shape1 = c(1, 1), shape2 = c(2, 2))
qnsBeta(p = c(0.25, 0.5, 0.75), shape1 = c(1, 2), shape2 = c(2, 2))

# Simulate 10 numbers
rnsBeta(n = 10, shape1 = c(1, 2), shape2 = c(1, 1))
}
\references{
Sherwani, R. Ah. K., Naeem, M., Aslam, M., Reza, M. A., Abid, M., Abbas, S. (2021).
    Neutrosophic beta distribution with properties and applications.
    \emph{Neutrosophic Sets and Systems}, 41, 209-214.
}
