test_that("prod_avg function works", {
  expect_equal(oil_prod(2000), 18508708.3)
  expect_equal(oil_prod(1981), 13299992.6)
  expect_equal(oil_prod(2022), "Enter a valid year between 1980 and 2021")
  expect_equal(gas_prod(2005), 12750253151)
  expect_equal(coal_prod(2004), 25793991.5)
  expect_equal(coal_prod(1971), "Enter a valid year between 1980 and 2021")
})
