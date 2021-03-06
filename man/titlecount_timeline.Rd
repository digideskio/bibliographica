% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/titlecount_timeline.R
\name{titlecount_timeline}
\alias{titlecount_timeline}
\title{Title Count Timeline}
\usage{
titlecount_timeline(x, group, nmin = 0, mode = "n")
}
\arguments{
\item{x}{data frame}

\item{group}{Field indicating the groups to compare}

\item{nmin}{Include only entries with at least nmin occurrences}

\item{mode}{"n" (number of entries) or "percentage" (fraction of entries)}
}
\value{
List:
\itemize{
  \item{plot}{ggplot object}
  \item{table}{summary table}
}
}
\description{
Compare title (document) count among selected groups.
}
\examples{
\dontrun{titlecount_timeline(df, "gatherings")}
}
\author{
Leo Lahti \email{leo.lahti@iki.fi}
}
\references{
See citation("bibliographica")
}
\keyword{utilities}

