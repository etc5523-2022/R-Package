#' Display the parametarized version of the shiny app.
#'
#' @description The app displays a parametarized version of the shiny app developed using this data.
#' This function works when the library(fossil) is loaded in the environment.
#'
#' @param t The function takes a string input ("Oil production","Gas production","Coal production"")
#' the function only takes only the above mentioned 3 inputs which corresponds
#' to the resource production the user wants to see. The inputs are case sensitive.
#'
#'
#'
#' @return The function returns a parametarized version of the shiny app with
#' the input provided. The app then lets you select the country and then the plot
#' displayed is the plot of the fossil fuel production over time.



#' @export
shiny_pa <- function(t) {

  `Entity` <- `Year` <- `type` <- `quantity` <- NULL
  `%>%` <- magrittr::`%>%`

  shiny::shinyApp( ui <- shiny::fluidPage(

   theme =  shinythemes::shinytheme("superhero"),



    shiny::titlePanel("ANALYSIS OF DIFFERENT FOSSIL FULES FOR DIFFERENT COUNTRIES"),

    shiny::h3("1.Resource production of different countries"),

    shiny::fluidRow(
      shiny::selectInput("country","Select a country",choices = unique(fossil::resource_data2$Entity)),

      shiny::mainPanel(
        plotly::plotlyOutput("plot1")
      )
    )
  ),


  server <- function(input, output, session) {

    output$plot1 <- plotly::renderPlotly({
     rec1 <- fossil::resource_data2 %>%
        dplyr::filter(Entity ==  input$country) %>%
        dplyr::filter( type == t)

      p<- ggplot2::ggplot(rec1,ggplot2::aes(x = `Year`,
                          y= quantity/1000000)) + ggplot2::geom_line(stat = 'identity') +
        ggplot2::scale_x_continuous( breaks = seq(min(fossil::resource_data2$Year),
                                         max(fossil::resource_data2$Year), by=2))  +
        ggplot2::labs(x = "Year", y = "Production(in million)") +
        ggplot2::theme_dark()

      plotly::ggplotly(p)

    })

}


  )
}
