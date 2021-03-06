\name{plot.barcode}
\alias{plot.barcode}
\title{Plot the Persistence Barcode}
\description{Plot the persistence barcode of the topology of a root system. More information can be found in \cite{Li et al (2017)} and \cite{Delory et al (2018)}.}
\usage{
\method{plot}{barcode}(x, xlab=NULL, ylab=NULL, ...)
}
\arguments{
  \item{x}{A barcode object. Mandatory.}
  \item{xlab}{A character string giving a label for the X axis.}
  \item{ylab}{A character string giving a label for the Y axis.}
  \item{...}{Additional graphical parameters.}
}
\value{
Returns a plot.
}
\references{
Delory B.M., Li M., Topp C.N., Lobet G. (2018). archiDART v3.0: a new data analysis pipeline allowing the topological analysis of plant root systems, \emph{F1000Research}, 7:22, DOI: \url{http://dx.doi.org/10.12688/f1000research.13541.1}

Li M., Duncan K., Topp C.N., Chitwood D.H. (2017) Persistent homology and the branching topologies of plants, \emph{American Journal of Botany}, DOI: 10.3732/ajb.1700046.
}
\author{Benjamin M. Delory, Guillaume Lobet
}
\seealso{\code{\link{perhomology}}, \code{\link{par}}.
}
\examples{
## Locate folder with RSML file
path <- system.file("extdata", package="archiDART")

table<-rsmlToTable(inputrsml=path, unitlength="cm", rsml.date="age")

#Persistent homology
ph<-perhomology(table)

#Plot the barcode
plot(ph$'monocot-archisimple_1', las=1, xlab="Geodesic distance (cm)")
}