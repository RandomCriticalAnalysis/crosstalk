% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot2.R
\name{scale_fill_selection}
\alias{scale_color_selection}
\alias{scale_fill_selection}
\alias{selection_factor}
\title{ggplot2 helpers}
\usage{
scale_fill_selection(color_false, color_true)

scale_color_selection(color_false, color_true)

selection_factor(x, na.replace = c(FALSE, NA, TRUE),
  reverse = packageVersion("ggplot2") < "2.2.0")
}
\arguments{
\item{color_false}{The color that should be mapped to unselected rows}

\item{color_true}{The color that should be mapped to selected rows}

\item{x}{Either a data frame with a \code{selected_} column, or, a logical
vector indicating which rows are selected}

\item{na.replace}{The value to use to replace \code{NA} values; choose either
\code{FALSE}, \code{NA}, or \code{TRUE} based on how you want values to be
treated when no selection is active}

\item{reverse}{Whether the factor level order should be \code{c(FALSE, TRUE)}
(normal) or \code{c(TRUE, FALSE)} (reverse). The former is required for
ggplot2 2.2.0+, the latter for earlier versions.}
}
\description{
Add \code{scale_fill_selection()} or \code{scale_color_selection} to a ggplot
to customize the scale for fill or color, respectively, for linked brushing.
Use \code{selection_factor} to turn logical vectors representing selection,
to a factor with the levels ordered for use with ggplot2 bar stacking.
}
\examples{
\dontrun{
sd <- SharedData$new(iris)
renderPlot({
  df <- sd$data(withSelection = TRUE, withFilter = TRUE)
  ggplot(df, aes(Sepal.Length, Sepal.Width,
    color = selection_factor(df))) +
    geom_point() +
    scale_color_selection("#444444", "skyblue1")
})

}
}

