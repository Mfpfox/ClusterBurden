% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/collect_example_cases.r
\name{collect_example_cases}
\alias{collect_example_cases}
\title{Make example cases based on ClinVAR and gnomAD data}
\usage{
collect_example_cases(
  matchcontrols,
  clndn_regex,
  inframes = T,
  max_inframe_size = 3,
  filtertype = "strict",
  maxmaf = 1e-04
)
}
\arguments{
\item{matchcontrols}{control group generated by collect_gnomad_controls()}

\item{clndn_regex}{ClinVAR disease annotation regular expression (require some knowledge of ClinVAR:clndn)}

\item{inframes}{include inframes as missense variants?}

\item{max_inframe_size}{maximum inframe size to include to a maximum of 3 (default=3)}

\item{filtertype}{type of allele frequency to filter MAF; "global", "popmax" or "strict" where global is the total allele frequency in controls, popmax is the maximum allele frequency in any ancestry group in GnomAD excluding ASJ, FIN, OTH and strict is the maximum allele frequency in any ancestry group in gnomAD or globally across GnomAD genomes}

\item{maxmaf}{maf threshold using for frequency filtering default is 0.0001 (i.e. 0.1%)}
}
\value{
A data.table of example cases
}
\description{
Make example cases based on ClinVAR and gnomAD data
}
\details{
This semi-synthetic data for example purposes. The resulting dataset is a composite of GnomAD gene variants and ClinVAR gene variants.
Disease genes are selected from ClinVAR according to the argument "clndn_regex" and null genes are selected from whichever GnomAD dataset is not used in the "matchcontrols" argument.
Allele counts and sample sizes are not available for ClinVAR so these are simulated: allele counts from an exponential distribution with rate=1.2 (resulting in
mostly singletons) and sample sizes to produce gene-level ORs x1:2 against gnomAD exomes.
}
\examples{
# Filtering for cases must match filtering for controls
# Controls must be generated by collect_gnomad_controls()
# Genes for each function must be calculated first using find_genes()

n_random_genes = 200
disease = "cardiomyopathy"

genes = find_genes(n_random_genes, disease)

controls = collect_gnomad_controls(genenames=genes)
cases = collect_example_cases(controls, disease)
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
