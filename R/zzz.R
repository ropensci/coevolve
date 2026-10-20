.onLoad <- function(libname, pkgname) {
  if (Sys.getenv("UNIVERSE_NAME") == "ropensci" &&
      is.null(cmdstanr::cmdstan_version(error_on_NA = FALSE))) {
    cmdstanr::install_cmdstan()
  }
}
