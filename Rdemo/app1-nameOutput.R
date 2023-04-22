# Data Professor
# http://youtube.com/dataprofessor
# http://github.com/dataprofessor


# Modified from Winston Chang, 
# https://shiny.rstudio.com/gallery/shiny-theme-selector.html

# Concepts about Reactive programming used by Shiny, 
# https://shiny.rstudio.com/articles/reactivity-overview.html

# Imports
library(shiny)
library(shinythemes)


# UI
ui <- fluidPage(theme = shinytheme("darkly"),
                navbarPage("R Tutorial",
                  tabPanel("Main",
                           sidebarPanel(
                             tags$h3("Input"),
                             textInput("txt1", "First name:", ""),
                             textInput("txt2", "Last name:", ""),
                           ),
                           mainPanel(
                             h1("Output"),
                             
                             h4("Full name:"),
                             verbatimTextOutput("txtout"),
                           )
                           
                  ), # Navbar 1, tabPanel
                  tabPanel("Navbar 2", "This panel is intentionally left blank"),
                  tabPanel("Navbar 3", "This panel is intentionally left blank")
                  
                )
              )


# Server function  
server <- function(input, output) {
  
  output$txtout <- renderText({
    paste( input$txt1, input$txt2, sep = " " )
  })
}


# Create Shiny object
shinyApp(ui = ui, server = server)