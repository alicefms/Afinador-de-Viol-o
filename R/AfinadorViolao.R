#' @export

afinar <- function(){
  library(shiny)
  library(music)

  ui <- fluidPage(
    titlePanel("Afinador de Violão"),
    hr(),
    h5("Escolha a nota para deixar seu violão na afinação padrão (em Mi) "),
    hr(),
    actionButton("mi", label = "Mi 1ª corda"),
    actionButton("si", label = "Si 2ª corda"),
    actionButton("sol", label = "Sol 3ª corda"),
    actionButton("re", label = "Ré 4ª corda"),
    actionButton("la", label = "Lá 5ª corda"),
    actionButton("mi1", label = "Mi 6ª corda")
  )

  server <- function(input, output) {

    observeEvent(input$mi, {playNote("E5")})
    observeEvent(input$si, {playNote("B4")})
    observeEvent(input$sol, {playNote("G4")})
    observeEvent(input$re, {playNote("D4")})
    observeEvent(input$la, {playNote("A4")})
    observeEvent(input$mi1, {playNote("E4")})
  }


  shinyApp(ui = ui, server = server)

}
