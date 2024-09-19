#Interactive dashboard & shiny app

library(shiny)

ui <- fluidPage(
 textInput(inputId="text1", label="Please enter your name", width=200),
 numericInput(inputId = "num1", label="Please enter a number", value=0),
 sliderInput(inputId= "num2", label="Please enter a number", value=0, min=0, max=120),
 radioButtons(inputId= "fastfood",label="What's your favorite fast food places?", choices=c("KFC", "McDonalds", "Popeyes")),
 selectInput(inputId="state", label="Where did you go to college?", choices=state.name),
 dateInput(inputId="date1", label="Enter your date of birth", format="mm-dd-yyyy"),
 dateRangeInput(inputId="date2", label="Please select two dates", format="mm-dd-yyyy"),
 fileInput(inputId="file", label= "Please upload a file"),
 passwordInput(inputId="password", label="Enter your password"),
 
 textOutput(outputId= "text2")
 
 
 
)

server <- function(input, output, session) {
  output$text2 <- renderText(
    
    {
      paste("The user's name is", input$"text1", ".")
    }
  )
  
}

shinyApp(ui, server)