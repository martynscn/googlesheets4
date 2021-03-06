context("test-make_column")

test_that("resolve_col_type() passes `ctype` other than 'COL_GUESS' through", {
  expect_identical(resolve_col_type("a cell", "COL_ANYTHING"), "COL_ANYTHING")
})

test_that("resolve_col_type() implements coercion DAG for 'COL_GUESS'", {
  input <- c("l", "D")
  expect_identical(resolve_col_type(input, "COL_GUESS"), "COL_LIST")
})
