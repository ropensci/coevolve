# testing .onLoad function
test_that("test .onLoad", {
  expect_no_error(coevolve:::.onLoad())
})
