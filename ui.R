
library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("My shiny app - PGA"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        numericInput("num", "Number of points", value = 1000, min = 200, max = 4000, step = 200),
        h3("Gaussian parameters:"),
        sliderInput("mu_x", "Mean x", -4, 4, 0, step = 0.25),
        sliderInput("mu_y", "Mean y", -4, 4, 0, step = 0.25),
        sliderInput("sd_x", "Standard deviation x", 0, 2, 1, step = 0.1),
        sliderInput("sd_y", "Standard deviation y", 0, 2, 1, step = 0.1),
        checkboxInput("dy_seed", "Dynamic seed")
    ),

    # Show a plot of the generated distribution
    mainPanel(
      h2("Random points in a plane"),
      p("With this app you can generate a number of random points in a plane by choosing the parameters for the Gaussian distribution"),
      plotOutput("plot"),
      p("Done by Diana Giraldo (Aug, 2020)")
    )
  )
))
