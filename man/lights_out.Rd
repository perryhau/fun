\name{lights_out}
\alias{lights_out}
\title{Play the ``Lights Out'' game in R}
\usage{
lights_out(width = 5, height = 5, steps = 3, cheat = FALSE, 
    col.off = "black", col.on = "white", col.frame = "lightblue", 
    seed = NULL)
}
\arguments{
  \item{width}{number of lights in x axis}

  \item{height}{number of lights in y axis}

  \item{steps}{number of ``seed'' lights to initialize the
  puzzle. In general, the larger \code{steps} is, the more
  complex this puzzle may be}

  \item{cheat}{logical. If \code{TRUE} a data frame
  indicating the steps to solve this puzzle will be
  printed}

  \item{col.off}{color when lights off}

  \item{col.on}{color when lights on}

  \item{col.frame}{color of lights border}

  \item{seed}{seed for random number generator}
}
\description{
  By default, the white squares in the plot denote the
  lights that are on, and black ones for the off. When you
  click on a light, this light as well as the four
  neighbors will switch theirs status. Your mission is to
  close all the lights.
}
\note{
  Linux/Mac users have to use \code{X11(type = 'Xlib')} or
  the Cairo graphics device \code{Cairo()} in the package
  \pkg{cairoDevice}.
}
\examples{
## should use Xlib for the x11() device under *nix, e.g
\dontrun{
if (.Platform$OS.type == "windows") 
    x11() else x11(type = "Xlib")
}

lights_out()
}
\author{
  Yixuan Qiu \email{yixuan.qiu@cos.name}
}
\references{
  \url{http://en.wikipedia.org/wiki/Lights_Out_(game)}
}
\keyword{iplot}
