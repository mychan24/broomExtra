% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy_lm_add_r_squared.R
\name{tidy_lm_add_r_squared}
\alias{tidy_lm_add_r_squared}
\title{\code{tidy_lm_add_r_squared}}
\usage{
tidy_lm_add_r_squared(tidy_df, n)
}
\arguments{
\item{tidy_df}{a \code{tidy} table of \code{lm} results}

\item{n}{the number of participants analyzed. Using nrow(data), where data is the dataframe used in \code{lm} is a good option.}
}
\value{
column of r.squared and adj.r.squared added a \code{tidy} table of a \code{lm}
}
\description{
add r.squared and adj.r.squared to \code{tidy} table of \code{lm} results.
}
\examples{
data <- tibble(
  a = scale(sample.int(100), scale = F),
  b = scale(sample.int(100), scale = F),
  c = b^2,
  d = scale(sample.int(100), scale = F)
)
lm(a ~ b, data) \%>\%
  tidy() \%>\%
  tidy_lm_add_r_squared(., n = nrow(data))
}
\author{
Ekarin Eric Pongpipat
}
