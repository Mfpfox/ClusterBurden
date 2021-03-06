% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_distribs.r
\name{plot_distribs}
\alias{plot_distribs}
\title{Plot the distributions of case and control variant residues}
\usage{
plot_distribs(
  case_residues,
  control_residues,
  case_coverage = NULL,
  control_coverage = NULL,
  cov_threshold = 0.5
)
}
\arguments{
\item{case_residues}{vector of case variant residue positions}

\item{control_residues}{vector of control variant residue positions}

\item{case_coverage}{optional coverage data for cases in format: data.table(symbol, protein_position, over_10)}

\item{control_coverage}{optional coverage data for controls in format: data.table(symbol, protein_position, over_10)}

\item{cov_threshold}{threshold at which a residue position is excluded from the analysis}
}
\value{
Returns a ggplot object
}
\description{
Plot the distributions of case and control variant residues
}
\details{
Produces a stripchart using geom_jitter for both cases and controls as well as a gaussian density line for each cohort. If coverage files are provided then these are included as a rug underneath and above the case and control variants and are
colored by their coverage level (< cov_threshold, < 80% 10X, < 90% 10X, > 90% 10X)
}
\examples{
nresidues = 1000 # length of the protein
probs = rexp(nresidues)^2
case_probs = probs * rep(c(1, 3, 1), c(200, 200, 600))
control_probs = probs * rep(c(2, 1, 2), c(200, 200, 600))

case_residues = sample(1:nresidues, 100, rep=T, case_probs)
control_residues = sample(1:nresidues, 100, rep=T, control_probs)

plot_distribs(case_residues, control_residues)
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
