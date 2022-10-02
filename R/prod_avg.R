#' Calculate the average Oil production.
#'
#' @description This function takes an input between 1980 and 2021 and returns the
#' average value of the oil production for the given year.
#'
#' @param x A numerical value between 1980 and 2021.
#' @examples
#' oil_prod(2005)
#' oil_prod(1990)
#' oil_prod(1980)
#'
#'
#' @return A numerical value which is the average value of the total oil production
#' for that year if x is between 1980 and 2021 else it will return an error message

#' @export


oil_prod <- function(x) {

  Average_oil_Production <-  `Entity` <- `Year` <- `Oil production` <- NULL

  `%>%` <- magrittr::`%>%`


  if(x >= 1980 & x <= 2021){
    return(


      fossil::resources_data %>%
             dplyr::filter(Entity != "World" ) %>%
             dplyr::filter(Entity != "Former U.S.S.R.") %>%
             dplyr::filter(Year == x) %>%
             dplyr::group_by(Year) %>%
             dplyr::summarise(Average_oil_Production = mean(`Oil production`,
                                                             na.rm = TRUE)) %>%
             dplyr::pull(Average_oil_Production)
    )

  }

  else("Enter a valid year between 1980 and 2021")

}



#' Calculate the average Natural Gas production.
#'
#' @description This function takes an input between 1980 and 2021 and returns the
#' average value of the gas production for the given year.
#'
#' @param x A numerical value between 1980 and 2021.
#' @examples
#' gas_prod(2005)
#' gas_prod(1990)
#' gas_prod(1980)
#'
#'
#' @return A numerical value which is the average value of the total gas production
#' for that year if x is between 1980 and 2021 else it will return an error message


#' @export
gas_prod <- function(x) {

  Average_gas_Production <-  `Entity` <- `Year` <- `Gas production` <- NULL
  `%>%` <- magrittr::`%>%`



  if(x >= 1980 & x <= 2021){
    return(

      fossil::resources_data %>%
        dplyr::filter(Entity != "World" ) %>%
        dplyr::filter(Entity != "Former U.S.S.R.") %>%
        dplyr::filter(Year == x) %>%
        dplyr::group_by(Year) %>%
        dplyr::summarise(Average_gas_Production = mean(`Gas production`, na.rm = TRUE)) %>%
        dplyr::pull(Average_gas_Production)
      )
  }

  else("Enter a valid year between 1980 and 2021")

}






#' Calculate the average Coal production.
#'
#' @description This function takes an input between 1980 and 2021 and returns the
#' average value of the coal production for the given year.
#'
#' @param x A numerical value between 1980 and 2021.
#' @examples
#' coal_prod(2005)
#' coal_prod(1990)
#' coal_prod(1980)
#'
#'
#' @return A numerical value which is the average value of the total coal production
#' for that year if x is between 1980 and 2021 else it will return an error message

#' @export
coal_prod <- function(x) {

  Average_coal_Production <- `Entity` <- `Year` <- `Coal production` <- NULL

  `%>%` <- magrittr::`%>%`



  if(x >= 1980 & x <= 2021){
    return(

      fossil::resources_data %>%
        dplyr::filter(Entity != "World" ) %>%
        dplyr::filter(Entity != "Former U.S.S.R.") %>%
        dplyr::filter(Year == x) %>%
        dplyr::group_by(Year) %>%
        dplyr::summarise(Average_coal_Production = mean(`Coal production`, na.rm = TRUE)) %>%
        dplyr::pull(Average_coal_Production)
      )
  }

  else("Enter a valid year between 1980 and 2021")

}



