# #RecreationThursday: Lewitt (remix)
# Matt Dray, June 2021

# The challenge hashtag:
#   https://twitter.com/hashtag/RecreationThursday

# See Sol Lewitt's original 'Color Bands' (2000) on his website:
#   https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/

server <- function(input, output) {
  
  randomSeed <- eventReactive(input$randseed, {
    sample(1:999999, 1)
  })
  
  plot_lewitt <- function() {
    
    if (is.null(randomSeed())) {
      seed_val <- sample(1:999999, 1)
    } else {
      seed_val <- randomSeed()
    }
    
    set.seed(seed_val)
    
    just_lewitt2(
      dimn = input$dimn,
      pal = sample(colours(), 7),
      shp_x = input$shp_x,
      box_w = input$box_w
    )
    
  }
  
  output$lewittPlot <- renderPlot({
    
    plot_lewitt()
    
  })
  
  output$downloadPlot <- downloadHandler(
    
    filename = function() {
      paste0(
        Sys.Date(), "_lewitt-remix_",
        input$dimn, "-", input$shp_x, "-", input$box_w, ".png"
      )
    },
    
    content = function(file) {
      png(file)
      plot_lewitt()
      dev.off()
    }
    
  )
  
}
