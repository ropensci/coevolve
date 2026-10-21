.onLoad <- function(libname, pkgname) {
  ropensci_universe <- Sys.getenv("UNIVERSE_NAME") == "ropensci"
  cmdstan_exists <- !is.null(
    cmdstanr::cmdstan_version(error_on_NA = FALSE)
  )
  if (ropensci_universe && !cmdstan_exists) {
    suppressWarnings(cmdstanr::install_cmdstan(quiet = TRUE))
  }
}
