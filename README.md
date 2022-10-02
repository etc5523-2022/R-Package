
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fossil

<!-- badges: start -->
<!-- badges: end -->

The goal of **fossil** is to help the user gain information about the
fossil fuels mainly *oil*, *natural gas* and *coal*. We can get
information about the production, consumption , total reserves of the
above mentioned fossil fuels for different countries and of different
years. The package also has functions that lets the used find the
average production, and also lets the user find about the top 10
producers of a fossil fuel for a particular year. The package also
contains functions to launch the shiny apps which helps the user
interactively use the data.

## Installation

You can install the development version of fossil from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2022/rpkg-kvatsal2000")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(fossil)
# To find the average oil production of 2002:
oil_prod(2002)
#> [1] 18174622
```

``` r

# To find the top 10 oil producers of 2002
top_oil(2002)
#> # A tibble: 10 × 2
#>    Entity         `Oil production`
#>    <chr>                     <dbl>
#>  1 Saudi Arabia          443300000
#>  2 Russia                430200000
#>  3 United States         333600000
#>  4 Iran                  200000000
#>  5 China                 196800000
#>  6 Mexico                189500000
#>  7 Norway                181800000
#>  8 Venezuela             151200000
#>  9 United Kingdom        133100000
#> 10 Canada                126000000
```
