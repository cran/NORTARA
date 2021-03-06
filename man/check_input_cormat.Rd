% Generated by roxygen2 (4.0.2): do not edit by hand
\name{check_input_cormat}
\alias{check_input_cormat}
\title{Test the input correlation matrix weather it is in the feasible bounds.}
\usage{
check_input_cormat(invcdfnames, paramslists, cor_matrix)
}
\arguments{
\item{invcdfnames}{A character sequence of the marginals' inverse cdf names.}

\item{paramslists}{A list contains lists of params of the marginals as the
 same order as \code{invcdfnames}.}

\item{cor_matrix}{The input correlation matrix to be checked.}
}
\value{
If all the elements of the input correlation matrix all in the bounds
 the function will return \code{TRUE}, otherwise it will print messages about
 the out of bounds elements' positions and then give an error message to
 users.
}
\description{
The function uses the lower and upper correlation bounds from results of the
function \code{valid_input_cormat} to test the users' input correlation
matrix.
}
\details{
The function uses the lower and upper correlation bounds from results of the
function \code{valid_input_cormat} to test the users' input correlation
matrix. If all the elements in the input correlation matrix are in the bounds,
the function will return \code{TRUE}, otherwise it will print out the
elements' positions in the input correlation matrix which are out of the lower
and upper bounds.
}
\note{
Because of the random samples, the results of the function may be a
 little different each time.
}
\examples{
\dontrun{
invcdfnames <- c("qt","qpois","qnorm")
paramslists <- list(
               m1 = list(df = 3),
               m2 = list(lambda = 5),
               m3 = list(mean = 0, sd = 1)
                 )
cor_matrix_correct <- matrix(c(1,0.5,-0.3,0.5,1,0.4,-0.3,0.4,1), 3)
cor_matrix_wrong <- matrix(c(1,0.94,-0.3,0.94,1,0.4,-0.3,0.4,1), 3)
check_input_cormat(invcdfnames, paramslists, cor_matrix_correct)
check_input_cormat(invcdfnames, paramslists, cor_matrix_wrong)
}
}
\seealso{
\code{\link{BoundingRA}}, \code{\link{valid_input_cormat}},
 \code{\link{genNORTARA}}
}

