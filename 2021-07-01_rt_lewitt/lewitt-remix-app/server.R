# #RecreationThursday: Lewitt (remix)
# Matt Dray, June 2021

# The challenge hashtag:
#   https://twitter.com/hashtag/RecreationThursday

# See Sol Lewitt's original 'Color Bands' (2000) on his website:
#   https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/

server <- function(input, output) {
  
  # Function to generate a random seed
  randomSeed <- eventReactive(input$randseed, {
    sample(1:999999, 1)
  })
  
  # Function to plot a LeWitt remix (required outside of renderPlot() so that
  # the user can also access the output using the download button)
  plot_lewitt <- function() {
    
    # Generate new seed on on button click
    set.seed(randomSeed())
    
    # Supply inputs to panel plot function
    just_lewitt2(
      dimn = input$dimn,
      pal = sample(colours(), 7),
      shp_x = input$shp_x,
      box_w = input$box_w
    )
    
  }
  
  # Rendering function for the plot
  output$lewittPlot <- renderPlot({
    
    plot_lewitt()
    
  })
  
  # Make output available for download
  output$downloadPlot <- downloadHandler(
    
    # Set filename in the form YYYY-MM-DD-HH-MM-SS_lewit-remix_X-Y-Z, where XYZ
    # are the grid dimension, point-size mulitplier and box-width inputs
    filename = function() {
      paste0(
        gsub("[:punct:]|\\s", "-", Sys.time()),
        "_lewitt-remix_", input$dimn, "-", input$shp_x, "-", input$box_w, ".png"
      )
    },
    
    # Open png device, call plotting function (not the renderPlot() output),
    # close device to save to user's machine
    content = function(file) {
      png(file)
      plot_lewitt()
      dev.off()
    }
    
  )
  
}
