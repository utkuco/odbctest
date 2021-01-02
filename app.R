library(shiny)
library(odbc)

ui <- fluidPage( verbatimTextOutput("txtdrv"))

server <- function(input, output) {
  output$txtdrv <- renderPrint({
    odbcListDrivers()
  })
}
shinyApp(ui = ui, server = server)