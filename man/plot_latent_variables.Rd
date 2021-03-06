% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pls_func.R
\name{plot_latent_variables}
\alias{plot_latent_variables}
\title{Plots latent variables}
\usage{
plot_latent_variables(plsr_obj, lv_num = 1, sd = 3, FUN = c(barplot,
  barplot), args1 = NULL, args2 = NULL)
}
\arguments{
\item{plsr_obj}{A plsr object}

\item{lv_num}{An integer or list of integer specifying which latent variables to plot.}

\item{sd}{Range in standard deviations from +[sd] to -[sd].}

\item{FUN}{A vector containing two functions, which will be used for plotting the results of
changes in the latent variable(s) in X and Y. Default is \code{c(barplot,barplot)}.}

\item{args1}{Arguments for the plotting function in \code{FUN[1]}}

\item{args2}{Arguments for the plotting function in \code{FUN[2]}}
}
\description{
This function will plot the effects of increasing and decreasing one or several latent variables by the specified standard deviation.
}
\examples{
plsr_obj = pls(rating_data, tracking_data,10,10)

#plot latent variable effect with barplots (default) for X and Y side
plot_latent_variables(plsr_obj)
\donttest{
#plot latent variables with barplots for the X side and
#a custom plot function tailored to face tracking data for the Y side
plot_latent_variables(plsr_obj,lv=1:2, sd=2, FUN=c(barplot,plsr:::plot_frame))

#same as above but with additional arguments passed to the plotting functions
plot_latent_variables(plsr_obj,FUN = c(barplot,plsr:::plot_frame),
    args1=list(col="red"),args2 = list(single_frame=5))
}

}
