% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nsgrayleigh.R
\name{Neutrosophic Generalized Rayleigh}
\alias{Neutrosophic Generalized Rayleigh}
\alias{dnsgrayleigh}
\alias{pnsgrayleigh}
\alias{qnsgrayleigh}
\alias{rnsgrayleigh}
\title{Neutrosophic Generalized Rayleigh Distribution}
\usage{
dnsgrayleigh(x, shape, scale)

pnsgrayleigh(q, shape, scale, lower.tail = TRUE)

qnsgrayleigh(p, shape, scale)

rnsgrayleigh(n, shape, scale)
}
\arguments{
\item{x}{a vector or matrix of observations for which the pdf needs to be computed.}

\item{shape}{the shape parameter, which must be a positive interval.}

\item{scale}{the scale parameter, which must be a positive interval.}

\item{q}{a vector or matrix of quantiles for which the cdf needs to be computed.}

\item{lower.tail}{logical; if TRUE (default), probabilities are
\eqn{P(X \leq x)}; otherwise, \eqn{P(X >x)}.}

\item{p}{a vector or matrix of probabilities for which the quantile needs to be computed.}

\item{n}{number of random values to be generated.}
}
\value{
\code{dnsgrayleigh} gives the density,
 \code{pnsgrayleigh} gives the distribution function,
 \code{qnsgrayleigh} gives the quantile function and
 \code{rnsgrayleigh} generates random variables from the Neutrosophic Generalized Rayleigh Distribution.
}
\description{
Density, distribution function, quantile function and random
generation for the neutrosophic generalized Rayleigh distribution with
parameters \code{shape} = \eqn{\nu_N} and \code{scale} = \eqn{\sigma_N}.
}
\details{
The neutrosophic generalized Rayleigh distribution with parameters \eqn{\nu_N} and
\eqn{\sigma_N} has the density
\deqn{f_N(x)=\frac{2\nu_N}{\sigma_N^2}x \exp\{-\left(\frac{x}{\sigma_N} \right)^2\}\left[1-\exp\{-\left(\frac{x}{\sigma_N} \right)^2\}\right]^{\nu_N-1}}
for \eqn{x > 0}, \eqn{\nu_N \in (\nu_L, \nu_U)}, the shape
parameter which must be a positive interval and
\eqn{\sigma_n \in (\sigma_L, \sigma_U)}, the scale parameter which
must be a positive interval.
}
\examples{
data(remission)
dnsgrayleigh(x = remission,shape = c(1.1884, 1.1896), scale = c(7.6658, 7.7796))

pnsgrayleigh(q = 20, shape = c(1.1884, 1.1896), scale = c(7.6658, 7.7796))

# Calculate quantiles
qnsgrayleigh(p = c(0.25, 0.5, 0.75), shape = c(1.1884, 1.1896), scale = c(7.6658, 7.7796))

# Simulate 10 values
rnsgrayleigh(n = 10, shape = c(1.1884, 1.1896), scale = c(7.6658, 7.7796))

}
\references{
Norouzirad, M., Rao, G. S., & Mazarei, D. (2023).
Neutrosophic Generalized Rayleigh Distribution with Application.
\emph{Neutrosophic Sets and Systems}, 58(1), 250-262.
}
