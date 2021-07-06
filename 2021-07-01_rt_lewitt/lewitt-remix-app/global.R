# #RecreationThursday: Lewitt (remix)
# Matt Dray, June 2021

# Read the blog about this app
#  https://www.rostrum.blog/2021/07/05/recreate-lewitt/

# Visit the app on shinyapps.io (until I take it down)
#   https://mattdray.shinyapps.io/lewitt-remix-app/

# The challenge hashtag:
#   https://twitter.com/hashtag/RecreationThursday

# See Sol Lewitt's original 'Color Bands' (2000) on his website:
#   https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/

# Function: place shape of decreasing size and varying colour
just_lewitt <- function(shape = 21:25,
                        place = c("NW", "N", "NE", "E", "C", "W", "SW", "S", "SE"),
                        pal = rainbow(7),
                        shp_n = 200,
                        shp_x = 4,
                        box_w = 10) {
  
  # Set plot margins to zero
  par(mar = rep(0, 4))
  
  # Set axis limits dependent on where you want to place the points
  if (place == "C") {  # i.e. points will appear to emanate from the centre
    
    my_xlim <- c(-1, 1)
    my_ylim <- c(-1, 1)
    
  } else if (place == "NW") {  # i.e. points emanate from top-left of plot
    
    my_xlim <- c( 0, 1)
    my_ylim <- c(-1, 0)
    
  } else if (place == "N") {
    
    my_xlim <- c(-1, 1)
    my_ylim <- c(-1, 0)
    
  } else if (place == "NE") {
    
    my_xlim <- c(-1, 0)
    my_ylim <- c(-1, 0)
    
  } else if (place == "E") {
    
    my_xlim <- c(-1, 0)
    my_ylim <- c(-1, 1)
    
  } else if (place == "W") {
    
    my_xlim <- c( 0, 1)
    my_ylim <- c(-1, 1)
    
  } else if (place == "SW") {
    
    my_xlim <- c(0, 1)
    my_ylim <- c(0, 1)
    
  } else if (place == "S") {
    
    my_xlim <- c(-1, 1)
    my_ylim <- c( 0, 1)
    
  } else if (place == "SE") {
    
    my_xlim <- c(-1, 0)
    my_ylim <- c( 0, 1)
    
  }
  
  # Plot points on a panel with no axes
  plot(
    x = rep(0, shp_n),
    y = rep(0, shp_n),
    xlim = my_xlim,
    ylim = my_ylim,
    axes = FALSE,
    xaxs = "i",
    yaxs = "i",
    pch  = shape,
    cex  = shp_x * shp_n:1,
    col  = pal,
    bg   = pal
  )
  
  # Add a box around the panel
  if (box_w != 0) {
    box(lwd = box_w)
  }
  
}

# Function: multi-plot canvas
just_lewitt2 <- function(dimn = 2,
                         pal = sample(colours(), 7),
                         shp_x = 4,
                         box_w = 10) {
  
  # Set layout to square grid
  par(mfrow = c(dimn, dimn))
  
  # Supply randomised inputs/user inputs to the function
  mapply(
    just_lewitt,
    shape = sample(21:25, dimn * dimn, replace = TRUE),
    place = sample(
      c("NW", "N", "NE", "E", "C", "W", "SW", "S", "SE"),
      dimn * dimn, replace = TRUE
    ),
    MoreArgs = list(
      pal = pal, 
      shp_x = shp_x,
      box_w = box_w
    )
  )
  
}
