

# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinyjs)


shinyServer(function(input, output) {
  observeEvent(input$go,{
    output$dash <- renderUI({
      shinyjs::hide("ocultar", anim = TRUE, animType = "fade")
      shinyjs::show("idheader", anim = TRUE, animType = "fade")
      # shinyjs::show("idsidebar", anim = TRUE, animType = "fade")
      tags$h1("Aqui va lo jarcor :v")
    })
  })
})
