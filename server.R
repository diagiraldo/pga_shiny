
library(shiny)
library(ggplot2)

shinyServer(function(input, output) {

  output$plot <- renderPlot({
      if(!input$dy_seed) {
          set.seed(123)
      }
      n <- input$num
      D <- data.frame(x = rnorm(n, mean = input$mu_x, sd = input$sd_x),
                     y = rnorm(n, mean = input$mu_y, sd = input$sd_y))
      plot <- ggplot(D, aes(x,y)) + geom_point(size = 0.25, colour = "grey30") + theme_bw() +
          xlim(-5,5) + ylim(-5,5)
      plot

  })

})
