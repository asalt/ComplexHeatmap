\name{plotDataFrame}
\alias{plotDataFrame}
\title{
Visualize a data frame  


}
\description{
Visualize a data frame  


}
\usage{
plotDataFrame(df, overlap = 0.25, nlevel = 30, show_row_names = TRUE, show_column_names = TRUE,
    group = NULL, group_names = names(group), main_heatmap = NULL, km = 1, split = NULL,
    cluster_rows = TRUE, cluster_columns = TRUE, ...)
}
\arguments{

  \item{df}{a data frame}
  \item{overlap}{how to group numeric columns. If the overlapping rate between the ranges in the current column and previous numeric column is larger than this value, the two columns are thought under same measurement and should be grouped.}
  \item{nlevel}{If the number of levels of a character column is larger than this value, the column will be excluded.}
  \item{show_row_names}{whether show row names after the last heatmap if there are row names.}
  \item{show_column_names}{whether show column names for all heatmaps}
  \item{group}{a list of index that defines the groupping}
  \item{group_names}{names for each group}
  \item{main_heatmap}{which group is the main heatmap}
  \item{km}{apply k-means clustering on rows for the main heatmap}
  \item{split}{set a splitting variable on rows for the main heatmap}
  \item{cluster_rows}{whether perform clustering on rows of the first heatmap}
  \item{cluster_columns}{whether perform clustering on columns for all heatmaps}
  \item{...}{pass to \code{\link{draw,HeatmapList-method}} or \code{\link{make_layout,HeatmapList-method}}}

}
\details{
The data frame contains information from different aspects and different measurements are applied on the same element for each row. The \code{\link{plotDataFrame}} function provides a simple and quick way to visualize information that are stored in a data frame.  

There are not many advanced settings in this function. Users can customize the style of the heatmaps by constructing a \code{\link{HeatmapList}} object.  


}
\value{
a \code{\link{HeatmapList}} object  


}
\author{
Zuguang Gu <z.gu@dkfz.de>  


}
\examples{
df = data.frame(matrix(rnorm(40), nrow = 10, dimnames = list(letters[1:10], letters[1:4])),
                large = runif(10)*100,
                t1 = sample(letters[1:3], 10, replace = TRUE),
                matrix(runif(60), nrow = 10, dimnames = list(LETTERS[1:10], LETTERS[1:6])),
                t2 = sample(LETTERS[1:3], 10, replace = TRUE))
plotDataFrame(df)
plotDataFrame(df, group = list(1:4, 5, 6, 7:12, 13), group_names = c("mat1", "large", "t1", "mat2", "t2"),
    main_heatmap = 4, km = 2, column_title = "column title", row_title = "row title")
}