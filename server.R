
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$Weight <- reactive({
    
    # generate bins based on input$bins from ui.R
    x    <- input$HoB 
    
    z <- data.frame(Planets = c("Mercury","Venus","Mars","Jupiter","Saturn","Uranus","Neptune","Pluto"),Ratio = c(0.378,0.907,0.377,2.36,0.916,0.889,1.12,0.071))
    y <- z[z$Planets == input$planet,]$Ratio
    round(x*y)
    
  
  })
  
})
