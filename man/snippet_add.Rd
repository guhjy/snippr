% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/snippet_add.R
\name{snippet_add}
\alias{snippet_add}
\title{Add a snippet to a .snippets file.}
\usage{
snippet_add(name, text, language = "r", path = snippets_path(language))
}
\arguments{
\item{name}{of the snippet to add}

\item{text}{text of the snippet to add, as a character vector}

\item{language}{language of the snippet. Choices are "r", "c_cpp", "html",
"css", "java", "javascript", "python", and "sql". Ignored if \code{path}
is specified.}

\item{path}{path to .snippets file}
}
\description{
Add a snippet to a .snippets file.
}
\details{
Note that a .snippets file for a language may not yet exist. If
it does not exist, go to Preferences->Code->Edit Snippets in RStudio,
make a trivial change to the language of choice (for example, a new
empty line), and click Save. This will create the language file in
~/.R/snippets/<language>.snippets with defaults included.
}
\examples{
\dontrun{

# add a .r snippet
snippet_add("dplyr", "${1:object} <- ${1:object} \%>\%\\n${2:function}")

# update the snippet, adding whitespace
snippet_add("dplyr", "${1:object} <- ${1:object} \%>\%\\n${2:function}")

# add an HTML snippet
snippet_add("copyright", "<span style = 'font-size: 10px'>Copyright 2015</span>", language = "html")

}
}

