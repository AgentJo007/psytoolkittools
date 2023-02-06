library(testthat)
library(psytoolkittools)

test_that(
  "Load experiment data test",
  {
    str = "1032 1 3 4"
    
    
    expect_equal(
      load.experiment.data(),
      NA
    )
  }
)
