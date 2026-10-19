# script to run before r-universe build
# see https://docs.r-universe.dev/publish/troubleshoot-build.html (section 13.4)
cmdstanr::check_cmdstan_toolchain(fix = TRUE)
cmdstanr::install_cmdstan(cores = parallel::detectCores())
source("tests/testthat/fixtures/coevfit_examples.R")
