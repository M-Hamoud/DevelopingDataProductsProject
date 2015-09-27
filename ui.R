library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("BMI calculator"),
        sidebarPanel(
                h2("Enter Your Weight in Kilograms"),
                numericInput("weight", "", 70, min = 30, max = 200, step = .5),
                h2("Enter Your Hight in Meters"),
                numericInput("hight", "", 1.7, min = 1.3, max = 2.1, step = .05)
        ),
        mainPanel(
                h3("BMI Result"),
                h4("Your Enterd Weight:"),
                verbatimTextOutput("WIn"),
                h4("Your Enterd Hight:"),
                verbatimTextOutput("HIn"),
                h4("Which Resulted in a BMI of:"),
                verbatimTextOutput("BMI"),
                p("The body mass index (BMI) or Quetelet index, is a value derived from the mass (weight) and height of an individual. The BMI is defined as the body mass divided by the square of the body height, and is universally expressed in units of kg/m2, resulting from mass in kilograms and height in metres. 'Wikipedia' ")
        )
)
)

#library(shinyapps)