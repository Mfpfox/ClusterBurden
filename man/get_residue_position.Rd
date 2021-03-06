% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_residue_position.r
\name{get_residue_position}
\alias{get_residue_position}
\title{Extract amino acid residue position from HGVS protein consequence}
\usage{
get_residue_position(hgvs)
}
\arguments{
\item{hgvs}{vector of variant protein consequences in HGVS format e.g. p.Trp26Cys or p.A54Y.}
}
\value{
Returns a numeric vector of amino acid positions
}
\description{
This function makes most sense for mutations that impact a single amino acid such as the missense mutation p.Trp26Cys.
For indels and duplications, where many amino acid positions are impacted, the first amino acid, i.e. the lowest index, is taken.
}
\examples{
get_residue_position("p.Trp26Cys")
}
\author{
Adam Waring - adam.waring@msdtc.ox.ac.uk
}
\keyword{RVAT,}
\keyword{case-control,}
\keyword{cluster,}
\keyword{distribution,}
\keyword{gene}
\keyword{genetics,}
