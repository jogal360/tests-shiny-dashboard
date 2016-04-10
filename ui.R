




# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinydashboard)

shinyUI(
  fluidPage(
    dashboardPage(
      dashboardHeader(
        title = "Análisis estadístico de datos",
        titleWidth = 450
      ),
      dashboardSidebar(
        sidebarMenu(
          menuItem("Portada", tabName = "portada", icon = icon("book")),
          menuItem("Widgets", tabName = "widgets", icon = icon("th"))
        )
      ),
      dashboardBody(
        tabItems(
          # First tab content
          tabItem(tabName = "portada",
                  tags$head(
                    tags$link(rel = "stylesheet", type = "text/css", href = "css/styles-home.css"),
                    tags$link(rel = "stylesheet", type = "text/css", href = "css/font-awesome.min.css")
                  ),
                  
                  
          tags$header(class = "intro",
                      tags$div(
                        class = "intro-body",
                        tags$div(class = "container",
                                 tags$div(
                                   class = "row",
                                   tags$div(
                                     class = "col-md-8 col-md-offset-2",
                                     tags$h1("Análisis Estadístico de Datos",
                                             class = "brand-heading"),
                                     tags$p("La toma de decisiones no es al azar...", class =
                                              "intro-text"),
                                     tags$a(
                                       href = "#about",
                                       class = "btn btn-circle page-scroll",
                                       tags$i(class = "fa fa-angle-double-down animated")
                                     )
                                   )
                                 ))
                      )),
          tags$section(
            id = "about",
            class = "container content-section text-center",
            tags$div(
              class = "row",
              tags$div(
                class = "col-lg-8 col-lg-offset-2",
                tags$h2("Acerca del sistema"),
                tags$p(
                  "Este sistema ha sdo desarrollado bajo el",
                  tags$a(href = "https://www.r-project.org/", "lenguaje de programación R"),
                  "por el equipo de desarrollo integrado por: Joaquin Galvan Angeles, Cesar Hernandez Antonio y Marco Antonio Palestina Gomez del grupo 8ITI1 para la materia de Estadística Aplicada.",
                  tags$br(),
                  "R se especializa en el análsis de datos estadísticos. Esto lo convierte en una herramienta de mucha utlidad dentro de las empresas o para propósitos personales.",
                  tags$a(
                    href = "#mainF",
                    class = "btn btn-circle page-scroll",
                    tags$i(class = "fa fa-angle-double-down animated")
                  )
                )
              )
            )
          ),
          tags$section(
            id = "mainF",
            class = "mainF-section text-center",
            tags$div(
              class = "container",
              tags$div(
                class = "col-lg-8 col-lg-offset-2",
                tags$h2("Principales funcionalidades"),
                tags$p(
                  "Este programa tiene por objetivo generar los resultados estadísticos más importantes en base a una serie de datos introducidos."
                ),
                tags$p(
                  "Se pueden ingresar los datos de manera manual, a través de una base de datos o bien, mediante un archivo CSV."
                ),
                tags$p(
                  "Además de que se tiene la posibilidad de visualizar los gráficos de dichos datos y esto no es todo, también se pueden descargar individualmente en formato pdf, docx y en html."
                ),
                tags$p(
                  "Los resultados que se obtienen con este sistema son los siguientes: ",
                  tags$ul(
                    id = "lst",
                    tags$li("Medidas de tendencia central"),
                    tags$li("Cuartiles"),
                    tags$li("Percentiles"),
                    tags$li("Varianza"),
                    tags$li("Desviación estándar"),
                    tags$li("Sesgo")
                  )
                ),
                tags$a(
                  href = "#contact",
                  class = "btn btn-circle page-scroll",
                  tags$i(class = "fa fa-angle-double-down animated")
                )
              )
            )
          )
          ,
          tags$section(
            id = "contact",
            class = "container content-section text-center",
            tags$div(
              class = "row",
              tags$div(
                class = "col-lg-8 col-lg-offset-2",
                tags$h2("Contacto"),
                tags$p(
                  "No dude en enviarnos un correo electrónico para brindarnos alguna información, problema o sugerencia sobre este sistema  "
                ),
                tags$p(
                  tags$a(href = "mailto:hernandez.antonio.cesar19@gmail.com", "hernandez.antonio.cesar19@gmail.com")
                ),
                tags$ul(class = "list-inline banner-social-buttons",
                        tags$li(
                          tags$a(
                            href = "https://github.com/Cesarfr/analisis-datos",
                            class = "btn btn-default btn-lg",
                            tags$i(class = "fa fa-github fa-fw"),
                            tags$span(class = "network-name", "GitHub")
                          )
                        ))
              )
            )
          ),
          tags$a(
            id = "btnUp",
            href = ".wrapper",
            class = "btn btn-circle page-scroll pull-right",
            tags$i(class = "fa fa-angle-double-up animated")
          ),
          tags$footer(tags$div(
            class = "container text-center",
            tags$p("Desarrollado para la asignatura de Estadística Aplicada"),
            tags$p("Todos los derechos reservados. 2016")
          )),
          tags$script(src = "js/jquery.easing.min.js"),
          tags$script(src = "js/grayscale.js")
          ),
          
          # Second tab content
          tabItem(tabName = "widgets",
                  h2("Widgets tab content")
          )
        )
      )
    )

  )
)
