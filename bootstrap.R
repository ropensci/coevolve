# script to run before r-universe build
# see https://docs.r-universe.dev/publish/troubleshoot-build.html (section 13.4)
install.packages(
  "cmdstanr",
  repos = c("https://stan-dev.r-universe.dev", getOption("repos"))
)
cmdstanr::check_cmdstan_toolchain(fix = TRUE)
cmdstanr::install_cmdstan()
