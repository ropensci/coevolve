.onLoad <- function(libname, pkgname) {
  if (Sys.getenv("UNIVERSE_NAME") == "ropensci" &&
        is.null(cmdstanr::cmdstan_version(error_on_NA = FALSE))) {
    cmdstanr::install_cmdstan(
      cpp_options = list(
        "CXXFLAGS+= -Wno-template-id-cdtor",
        "CXXFLAGS+= -Wno-deprecated-declarations"
      )
    )
  }
}
