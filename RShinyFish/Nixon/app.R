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
        selectInput("size", "Size:", 
                    c('All fish', Fry="fry", Parr="parr", Smolt="smolt"))
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
  
  output$myPlot <- renderPlot({
    
    # Boxplot output for fry sized fish
    if(input$size == "fry"){
      boxplot(fishLength[1:35]~location[1:35],
              data = fishData,
              main = "Fish Length Based on Location (fry)",
              names = c("Flood Plain", "Main Channel"),
              xlab = "Fish Length (cm)",
              ylim = c(1, 41),
              ylab = "Location",
              col = "#ffd699",
              border= "#cc6600",
              horizontal = TRUE
      )
    }
    
    # Boxplot output for parr sized fish
    else if(input$size == "parr"){
      boxplot(fishLength[36:113]~location[36:113],
              data = fishData,
              main = "Fish Length Based on Location (parr)",
              names = c("Flood Plain", "Main Channel"),
              xlab = "Fish Length (cm)",
              ylim = c(1, 41),
              ylab = "Location",
              col = "#ffad33",
              border= "#804000",
              horizontal = TRUE
      )
    }
    
    # Boxplot output for smolt sized fish
    else if(input$size == "smolt"){
      boxplot(fishLength[114:178]~location[114:178],
              data = fishData,
              main = "Fish Length Based on Location (smolt)",
              names = c("Flood Plain", "Main Channel"),
              xlab = "Fish Length (cm)",
              ylim = c(1, 41),
              ylab = "Location",
              col = "#cc7a00",
              border= "#331a00",
              horizontal = TRUE
      )
    }
    
    # Boxplot output for all fish
    else{
      boxplot(fishLength~location,
              data = fishData,
              main = "Fish Length Based on Location of All Fish Sizes",
              names = c("Flood Plain", "Main Channel"),
              xlab = "Fish Length (cm)",
              ylim = c(1, 41),
              ylab = "Location",
              col = "orange",
              border= "brown",
              horizontal = TRUE
      )
    }
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