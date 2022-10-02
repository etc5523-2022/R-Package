#' Show the top 10 oil producers of the given year
#'
#' @description This function takes an input between 1980 and 2021 and returns the
#' top 10 oil producers of the given year
#'
#' @param x A numerical value between 1980 and 2021.
#' @examples
#' top_oil(2005)
#' top_oil(1990)
#' top_oil(1980)
#'
#'
#' @return A tibble which shows the top 10 oil producers for that year if x is
#' between 1980 and 2021 else it will return an error message.

#' @export
top_oil <- function(x) {

  `Entity` <- `Year` <- `Oil production` <- NULL

  `%>%` <- magrittr::`%>%`


  if(x >= 1980 & x <= 2021){
    return(

      fossil::resources_data %>%
        dplyr::filter(Entity != "World" ) %>%
        dplyr::filter(Entity != "Former U.S.S.R.") %>%
        dplyr::filter(Year == x) %>%
        dplyr::arrange(dplyr::desc(`Oil production`)) %>%
        dplyr::select(`Entity`,`Oil production`) %>%
        utils::head(10)
    )

  }

  else("Enter a valid year between 1980 and 2021")

}





#' Show the top 10 Natural Gas producers of the given year
#'
#' @description This function takes an input between 1980 and 2021 and returns the
#' top 10 natural gas producers of the given year
#'
#' @param x A numerical value between 1980 and 2021.
#' @examples
#' top_gas(2005)
#' top_gas(1990)
#' top_gas(1980)
#'
#'
#' @return A tibble which shows the top 10 natural gas producers for that year if x is
#' between 1980 and 2021 else it will return an error message.

#' @export
top_gas <- function(x) {

  `Entity` <- `Year` <- `Gas production` <- NULL

  `%>%` <- magrittr::`%>%`


  if(x >= 1980 & x <= 2021){
    return(

      fossil::resources_data %>%
        dplyr::filter(Entity != "World" ) %>%
        dplyr::filter(Entity != "Former U.S.S.R.") %>%
        dplyr::filter(Year == x) %>%
        dplyr::arrange(dplyr::desc(`Gas production`)) %>%
        dplyr::select(`Entity`,`Gas production`) %>%
        utils::head(10)
    )

  }

  else("Enter a valid year between 1980 and 2021")

}








#' Show the top 10 Coal producers of the given year
#'
#' @description This function takes an input between 1980 and 2021 and returns the
#' top 10 coal producers of the given year
#'
#' @param x A numerical value between 1980 and 2021.
#' @examples
#' top_coal(2005)
#' top_coal(1990)
#' top_coal(1980)
#'
#'
#' @return A tibble which shows the top 10 coal producers for that year if x is
#' between 1980 and 2021 else it will return an error message.

#' @export
top_coal <- function(x) {

  `Entity` <- `Year` <- `Coal production` <- NULL

  `%>%` <- magrittr::`%>%`


  if(x >= 1980 & x <= 2021){
    return(

      fossil::resources_data %>%
        dplyr::filter(Entity != "World" ) %>%
        dplyr::filter(Entity != "Former U.S.S.R.") %>%
        dplyr::filter(Year == x) %>%
        dplyr::arrange(dplyr::desc(`Coal production`)) %>%
        dplyr::select(`Entity`,`Coal production`) %>%
        utils::head(10)
    )

  }

  else("Enter a valid year between 1980 and 2021")

}





