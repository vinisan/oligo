\name{chromosome}
\alias{chromosome}
\alias{chromosome,TilingFeatureSet-method}
\alias{pmChr}
\alias{pmChr,TilingFeatureSet-method}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Accessor for chromosome information}
\description{
  Returns chromosome information for Tiling arrays.
}
\usage{
chromosome(object)
pmChr(object)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{\code{TilingFeatureSet} object}
}
\details{
  \code{chromosome()} returns the chromosomal information for all probes
  and \code{pmChr()} subsets the output to the PM probes only.
}
\value{
  Vector with chromosome information.
}
\references{}
\author{}
\note{}

\seealso{}
\examples{
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}