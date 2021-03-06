% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/augment_dimension_table.R
\name{augment_dimension_table}
\alias{augment_dimension_table}
\title{Augment dimension table}
\usage{
augment_dimension_table(dim.tab, dim.info = NULL, sheet.dim.tab = NULL,
  verbose = FALSE)
}
\arguments{
\item{dim.tab}{dim.tab}

\item{dim.info}{Mapping between document dimensions.}

\item{sheet.dim.tab}{sheet.dim.tab}

\item{verbose}{verbose}
}
\value{
Augmented dim.tab
}
\description{
Estimate missing entries in dimension table where possible
}
\examples{
# augment_dimension_table(dim.tab)
}
\author{
Leo Lahti \email{leo.lahti@iki.fi}
}
\references{
See citation("bibliographica")
}
\seealso{
polish_dimensions
}
\keyword{utilities}

