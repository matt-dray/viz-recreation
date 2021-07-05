server <- function(input, output) {
  
  output$lewittPlot <- renderPlot({
    
    just_lewitt2(
      dimn = as.numeric(input$dimn),
      pal = sample(colours(), 7),
      shp_x = as.numeric(input$shp_x),
      box_w = as.numeric(input$box_w)
    )
    
  })
}
