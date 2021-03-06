% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downloadableTable.R
\name{downloadableTable}
\alias{downloadableTable}
\title{DownloadableTable Module}
\usage{
downloadableTable(input, output, session, logger, filenameroot,
  downloaddatafxns = list(), tabledata, rownames = TRUE,
  caption = NULL)
}
\arguments{
\item{input}{provided by \code{shiny::callModule}}

\item{output}{provided by \code{shiny::callModule}}

\item{session}{provided by \code{shiny::callModule}
\cr \cr}

\item{logger}{\link[logging:logging-package]{logging} logger to use}

\item{filenameroot}{the base text used for user-downloaded file - can be
either a character string or a reactive expression returning a character
string}

\item{downloaddatafxns}{a \strong{named} list of functions providing the data as
return values.  The names for the list should be the same names that were used
when the table UI was created.}

\item{tabledata}{function or reactive expression providing the table display
data as a return value.  This function should require no input parameters.}

\item{rownames}{whether or not to show the rownames in the table}

\item{caption}{table caption}
}
\value{
Reactive expression containing the currently selected rows in the
display table
}
\description{
Server-side function for the DownloadableTableUI.  This is a custom
high-functionality table paired with a linked downloadFile
button.
}
\section{Notes}{

When there are no rows to download in any of the linked downloaddatafxns the
button will be hidden as there is nothing to download.
}

\section{Shiny Usage}{

This function is not called directly by consumers - it is accessed in
server.R using the same id provided in \code{downloadableTableUI}:

\strong{\code{callModule(downloadableTable, id, logger, filenameroot,
downloaddatafxns, tabledata, rownames, caption)}}

\emph{Note}: callModule returns the reactive expression containing the
currently selected rows in the display table.
}

\seealso{
\link[periscope]{downloadableTableUI}

\link[shiny]{callModule}

\link[logging:logging-package]{logging}
}
