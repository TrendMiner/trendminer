% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/browse_structures.R
\name{tm_af_child_structures}
\alias{tm_af_child_structures}
\title{Get child structures by parent structure ID}
\usage{
tm_af_child_structures(token, parent_id, ...)
}
\arguments{
\item{token}{A valid access token}

\item{parent_id}{Parent structure ID in UUID format}

\item{...}{Additional arguments passed on to the underlying HTTP method.
This might be necessary if you need to set some curl options explicitly
via \code{\link[httr]{config}}.}
}
\value{
A data frame with child structures of \code{parent_id} or an empty list in case
\code{parent_id} is a leaf node.
}
\description{
Gets the structures that have a parent defined by \code{parent_id} and returns them
in a data frame.
}
\examples{
\dontrun{
token <- tm_token()
roots <- tm_af_root_structures(token)

# Get child structures of the first root structure
tm_af_child_structures(token, roots$structureId[1])

# Get child structures by specific parent structure ID
tm_af_child_structures(token, "e5225244-c6de-48c2-87da-5b51b65062e8")
}
}
