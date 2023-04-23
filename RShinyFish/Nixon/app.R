# R Version:  4.2.3
#
# Author:     Samantha Nixon
#
# Purpose:    This Shiny app serves as a coding sample for Western EcoSystems 
#             Technology Inc. The fish data set is used to visualize trends of 
#             fish size based on location caught. 


# Imports
library(shiny)
library(shinythemes)
library(DT)
library(here)
library(ggplot2)

fishData <- readRDS(here("fishData.RDS"))

# UI
ui <- fluidPage(
  theme = shinytheme("readable"),
  navbarPage("Fish Data Summary",
 
    # Boxplots
    tabPanel("Plot",
             
      # Sidebar panel for input
      sidebarPanel(
      
        tags$label(h4('Input Parameters')),
      
        # User input options for fish size
        checkboxGroupInput('size', "Size:",
                           c(Fry="fry", Parr="parr", Smolt="smolt")),
        checkboxGroupInput('location', "Location:",
                           c('Main channel'="mainChannel", 'Flood plain'="floodPlain"))
        #actionButton()
      ),
      
      # Main panel boxplot
      mainPanel(plotOutput("myPlot"))
      ),
    
    # Table
    tabPanel(
      'Table', textOutput("tableText"),
      br(),
      DTOutput("fishTable")
      ),
    
    # Descriptive stats
    tabPanel('Descriptive Statistics', verbatimTextOutput("stats1")),
    
    # Code summary
    tabPanel('Code Summary',
             "This Shiny application serves the purpose of showcasing my data 
              visualization and coding abilites in the R programming language. 
              As I am fairly new to R and Shiny, this project also serves as a 
              reference to my abilities of learning new technologies in a short 
              span of time. I was able to develop dynamic boxplots based on a 
              single user input, and I look forward to spending more time 
              learning how to condense my code with more reusability as well as 
              present a more interactive/reactive user experience.")
  )
)



# Server
server <- function(input, output) {
  
  
    x <- seq(0, 41, by=5)
    
    #FISH
    # Fry
    fry.geom <- reactive({
      geom_boxplot(mapping = aes(x=fishData$fishLength[1:35], y=input$location), color="pink")
    })
    fry <- reactive({
      if("fry" %in% input$size){
        fry.geom()
        }
    })
    
    # Parr
    parr.geom <- reactive({
      geom_boxplot(mapping = aes(x=fishData$fishLength[36:113], y=input$location), color="red")
    })
    parr <- reactive({
      if("parr" %in% input$size){
        parr.geom()}
    })
    
    # Smolt
    smolt.geom <- reactive({
      geom_boxplot(mapping = aes(x=fishData$fishLength[114:178], y=input$location), color="darkred")
    })
    smolt <- reactive({
      if("smolt" %in% input$size){
        smolt.geom()}
    })
    
    
    #LOCATION
    #Main channel
    mc.geom <- reactive({
      geom_boxplot(mapping=aes(x, y=input$location))
    })
    mc <- reactive({
      if("mainChannel" %in% input$location){
        mc.geom()
      }
    })
    
  output$myPlot <- renderPlot({
    ggplot() + fry() + parr() + smolt() + mc()
  })
  
  # Table output
  output$fishTable <- renderDT({
    datatable(fishData) %>% formatRound("fishLength", digits=1)
  })
  
  #Table text
  output$tableText <- renderText({
    ("The table below displays the dataset used to render the boxplots. Fish
     size is noted as either fry, parr, or smolt. The unit of measurement for
     fish length is assumed as cm. The location shows where the fish was caught, 
     either in the main channel or in the flood plain.")
  })
  
  # Descriptive Statistics
  output$stats1 <- renderPrint({
    summary(fishData)
  })
}


# Shiny app
shinyApp(ui = ui, server = server)