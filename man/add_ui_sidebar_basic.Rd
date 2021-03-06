% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ui_helpers.R
\name{add_ui_sidebar_basic}
\alias{add_ui_sidebar_basic}
\title{Add UI Elements to the Sidebar (Basic Tab)}
\usage{
add_ui_sidebar_basic(elementlist = NULL, append = FALSE,
  tabname = "Basic")
}
\arguments{
\item{elementlist}{list of UI elements to add to the sidebar tab}

\item{append}{whether to append the \code{elementlist} to currently
registered elements or replace the currently registered elements.}

\item{tabname}{change the label on the UI tab (default = "Basic")}
}
\description{
This function registers UI elements to the primary (front-most) tab
on the dashboard sidebar.  The default name of the tab is \strong{Basic} but
can be renamed using the tabname argument.  This tab will be active on the
sidebar when the user first opens the shiny application.
}
\section{Shiny Usage}{

Call this function after creating elements in \code{ui_sidebar.R} to register
them to the application framework and show them on the Basic tab in the
dashboard sidebar
}

\seealso{
\link[periscope]{add_ui_sidebar_advanced}

\link[periscope]{add_ui_body}
}
