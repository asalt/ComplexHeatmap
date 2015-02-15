\name{initialize-ColorMapping-method}
\alias{initialize,ColorMapping-method}
\title{
Constructor methods for ColorMapping class


}
\description{
Constructor methods for ColorMapping class


}
\usage{
\S4method{initialize}{ColorMapping}(.Object, name, colors = NULL, levels = NULL,
    col_fun = NULL, breaks = NULL)
}
\arguments{

  \item{.Object}{private object
  \item{name}{name for this color mapping.
  \item{colors}{discrete colors
  \item{levels}{levels that correspond to \code{colors}. If \code{colors} is name indexed, 
  \item{col_fun}{color mapping function that maps continuous values to colors
  \item{breaks}{breaks for the continuous color mapping. If \code{col_fun} is

}
\details{
\code{colors} and \code{levels} are used for discrete color mapping, \code{col_fun} and 


}
\value{
A \code{\link{ColorMapping}} object


}
\author{
Zuguang Gu <z.gu@dkfz.de>


}