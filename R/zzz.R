.onLoad <- function(libname, pkgname) {
  if (Sys.getenv("UNIVERSE_NAME") == "ropensci") {
    cmdstanr::check_cmdstan_toolchain(fix = TRUE)
    cmdstanr::install_cmdstan()
  }
}
