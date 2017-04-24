
library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("What is you weight ? "),
  
    # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("HoB",
                   "Enter your weight( in Kilograms ):",
                   min = 1,
                   max = 200,
                   value = 70),
       
       radioButtons("planet","Select the Planet",choices = c("Mercury","Venus","Mars","Jupiter","Saturn","Uranus","Neptune","Pluto")),
       
       submitButton("Submit")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
            
        h3("Your weight will be:"),
       h3(textOutput("Weight")),"Kilograms",
       
       h3("Instructions:"),
       "Weight is a Vector which depends in the gravity of the body, in this case planet, on which it is measured ",
       "This App helps you to check your weight in different Planets of our Solar System. You need to set your Weight (in Kilograms ) using the slider and select the Planet where you want to check your weight. After you have set the appropriate weight and selected the Planet click on Sumbit to check your Weight there"
       
    )
  )
))
