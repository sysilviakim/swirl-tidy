# preparations; required libraries
library(shiny)
library(dplyr)
library(tibble)
library(stringr)
library(ggplot2)

# the post url
post <- "https://heads0rtai1s.github.io/2019/12/05/shiny-starter-code/"

# user interface elements and layout
ui <- fluidPage(
  titlePanel("Heads or Tails"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        inputId = "n", label = "Number of flips:",
        min = 10, max = 1000, value = 500
      ),
      sliderInput(
        inputId = "prob", label = "Success rate:",
        min = 0, max = 1, value = 0.5
      ),
      tags$div(tags$p(HTML("<br><br><br><br>
                        Find the annotated code")),
               tags$a(href=post, "in this blog post."))
      
    ),
    mainPanel(plotOutput(outputId = "bars"))
  )
)

# server-side computations
server <- function(input, output) {
  
  # the bar plot
  output$bars <- renderPlot({
    
    # most of this is for ggplot2; note the input$x syntax
    flips <- tibble(flips = rbinom(input$n, 1, input$prob)) %>% 
      mutate(flips = if_else(flips == 1, "Heads", "Tails"))  
    
    flips %>% 
      count(flips) %>% 
      ggplot(aes(flips, n, fill = flips)) +
      geom_col() +
      geom_label(aes(flips, n, label = n), size = 5) +
      theme(
        legend.position = "none",
        axis.text = element_text(size = 15)
      ) +
      labs(x = "", y = "") +
      ggtitle(
        str_c(
          "Results of ", input$n,
          " flips with Heads probability ",
          sprintf("%.2f", input$prob)
        )
      ) + 
      scale_fill_manual(values = c("#c2a5cf", "#a6dba0"))
  })
}

# run it all
shinyApp(ui = ui, server = server)