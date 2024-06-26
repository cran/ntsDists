% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nsWeibull.R
\name{Neutrosophic Weibull}
\alias{Neutrosophic Weibull}
\alias{dnsWeibull}
\alias{pnsWeibull}
\alias{qnsWeibull}
\alias{rnsWeibull}
\title{Neutrosophic Weibull Distribution}
\usage{
dnsWeibull(x, shape, scale)

pnsWeibull(q, shape, scale, lower.tail = TRUE)

qnsWeibull(p, shape, scale)

rnsWeibull(n, shape, scale)
}
\arguments{
\item{x}{a vector or matrix of observations for which the pdf needs to be computed.}

\item{shape}{shape parameter, which must be a positive interval.}

\item{scale}{scale parameter, which must be a positive interval.}

\item{q}{a vector or matrix of quantiles for which the cdf needs to be computed.}

\item{lower.tail}{logical; if TRUE (default), probabilities are
\eqn{P(X \leq x)}; otherwise, \eqn{P(X >x)}.}

\item{p}{a vector or matrix of probabilities for which the quantile needs to be computed.}

\item{n}{number of random values to be generated.}
}
\value{
\code{dnsWeibull} gives the density function

 \code{pnsWeibull} gives the distribution function

 \code{qnsWeibull} gives the quantile function

 \code{rnsWeibull} generates random variables from the neutrosophic Weibull dDistribution.
}
\description{
Density, distribution function, quantile function and random
generation for the neutrosophic Weibull distribution with \code{scale}
parameter \eqn{\alpha_N} and \code{shape} parameter \eqn{\beta_N}.
}
\details{
The neutrosophic Rayleigh distribution with parameters
\eqn{\alpha_N} and \eqn{\beta_N} has the density
\deqn{f_N(x)=\frac{\beta_N}{\alpha_N^{\beta_N}} x^{\beta_N-1}
    \exp\{-\left(x / \alpha_N\right)^{\beta_N}\}}
for \eqn{\beta_N \in (\beta_L, \beta_U)} the shape parameter must
be a positive interval, \eqn{\alpha_N \in (\alpha_L,\alpha_U)},
the scale parameter which be a positive interval, and \eqn{x > 0}.
}
\examples{
data(remission)
dnsWeibull(x = remission, shape = c(1.0519, 1.0553), scale = c(9.3370, 9.4544))

pnsWeibull(q = 20, shape = c(1.0519, 1.0553), scale = c(9.3370, 9.4544))

# Calculate quantiles
qnsWeibull(p = c(0.25, 0.5, 0.75), shape = c(1.0519, 1.0553), scale = c(9.3370, 9.4544))

# Simulate 10 numbers
rnsWeibull(n = 10, shape = c(1.0519, 1.0553), scale = c(9.3370, 9.4544))

}
\references{
Alhasan, K. F. H. and Smarandache, F. (2019). Neutrosophic Weibull
   distribution and Neutrosophic Family Weibull Distribution,
   \emph{Neutrosophic Sets and Systems}, 28, 191-199.
}
