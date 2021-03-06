% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tables.R
\name{make_abctable}
\alias{make_abctable}
\title{Make summary table of ABC estimation}
\usage{
make_abctable(
  kobe_table,
  result_future,
  beta,
  year,
  faa_pre,
  faa_after,
  yr_preabc
)
}
\arguments{
\item{kobe_table}{Return of \code{make_kobeII_table}}

\item{result_future}{Return of \code{future_vpa}}

\item{beta}{Value of beta to extract from Kobe table}

\item{year}{ABC year}

\item{faa_pre}{F at age of \code{yr_preabc}}

\item{faa_after}{F at age under HCR}

\item{yr_preabc}{Vector of future years preceding ABC year}
}
\description{
Make summary table of ABC estimation
}
