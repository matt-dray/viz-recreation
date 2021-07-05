# #RecreationThursday: Lewitt (remix)
# Matt Dray, July 2021

# Function: place shape of decreasing size and varying colour
just_lewitt <- function(shape = 21:25,
                        place = c("NW", "N", "NE", "E", "C", "W", "SW", "S", "SE"),
                        pal = rainbow(7),
                        shp_n = 200,
                        shp_x = 4,
                        box_w = 10) {
  
  par(mar = rep(0, 4))
  
  if (place == "C") {
    
    my_xlim <- c(-1, 1)
    my_ylim <- c(-1, 1)
    
  } else if (place == "NW") {
    
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
  
  if (box_w != 0) {
    box(lwd = box_w)
  }
  
}

# Function: multi-plot canvas
just_lewitt2 <- function(dimn = 2,
                         pal = sample(colours(), 7),
                         shp_x = 4,
                         box_w = 10) {
  
  par(mfrow = c(dimn, dimn))
  
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
