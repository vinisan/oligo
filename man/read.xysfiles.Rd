\name{read.xysfiles}
\alias{read.xysfiles}
\alias{read.xysfiles2}
\title{Parser to XYS files}
\description{
  NimbleGen provides XYS files which are read by this function.
}
\usage{
read.xysfiles(..., filenames, pkgname, phenoData, featureData,
experimentData, protocolData, notes, verbose=TRUE, sampleNames,
checkType=TRUE)

read.xysfiles2(channel1, channel2, pkgname, phenoData, featureData,
experimentData, protocolData, notes, verbose=TRUE, sampleNames,
checkType=TRUE)
}
\arguments{
  \item{...}{file names}
  \item{filenames}{\code{character} vector with filenames.}
  \item{channel1}{a \code{character} vector with the XYS filenames for
    the first 'channel' on a Tiling application}
  \item{channel2}{a \code{character} vector with the XYS filenames for
    the second 'channel' on a Tiling application}
  \item{pkgname}{\code{character} vector with alternative PD Info
    package name}
  \item{phenoData}{\code{phenoData}}
  \item{featureData}{\code{featureData}}
  \item{experimentData}{\code{experimentData}}
  \item{protocolData}{\code{protocolData}}
  \item{notes}{\code{notes}}
  \item{verbose}{\code{verbose}}
  \item{sampleNames}{\code{character} vector with sample names (usually
    better descriptors than the filenames)}
  \item{checkType}{\code{logical}. Check type of each file? This can be
    time consuming.}
}
\details{
  The function will read the XYS files provided by NimbleGen Systems and
  return an object of class FeatureSet.

  The function guesses which annotation package to use from the header
  of the XYS file. The user can also provide the name of the annotaion
  package to be used (via the \code{pkgname} argument). If the
  annotation package cannot be loaded, the function returns an
  error. If the annotation package is not available from BioConductor,
  one can use the \code{pdInfoBuilder} package to build one.
}
\value{
  \item{\code{ExpressionFeatureSet}}{if Expresssion arrays}
  \item{\code{TilingFeatureSet}}{if Tiling arrays}
}
\seealso{\code{\link{list.xysfiles}}, \code{\link{read.celfiles}}}
\examples{
if (require(maqcExpression4plex) & require(pd.hg18.60mer.expr)){
xysPath <- system.file("extdata", package="maqcExpression4plex")
xysFiles <- list.xysfiles(xysPath, full.name=TRUE)
ngsExpressionFeatureSet <- read.xysfiles(xysFiles)
}
}
\keyword{IO}
