library(shiny)

BMI <- function(w,h){
        w/h^2
}

shinyServer(
        function(input, output){
                output$WIn <- renderPrint({input$weight})
                output$HIn <- renderPrint({input$hight})
                output$BMI <- renderPrint({BMI(input$weight,input$hight)})
        }
)