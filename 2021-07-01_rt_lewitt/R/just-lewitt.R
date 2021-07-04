# #RecreationThursday: Lewitt (remix)
# Matt Dray, July 2021

# Function: place shape of decreasing size and varying colour
just_lewitt <- function(
  shape = 21:25,
  place = c("C", "NW", "NE", "SW", "SE"),
  cols,
  shp_n = 50,
  shp_x = 4,
  box_w = 10
) {
  
  par(mar = rep(0, 4))
  
  if (place == "C") {
    my_xlim <- c(-1, 1)
    my_ylim <- c(-1, 1)
  } else if (place == "NW") {
    my_xlim = c( 0, 1)
    my_ylim = c(-1, 0)
  } else if (place == "NE") {
    my_xlim = c(-1, 0)
    my_ylim = c(-1, 0)
  } else if (place == "SW") {
    my_xlim = c(0, 1)
    my_ylim = c(0, 1)
  } else if (place == "SE") {
    my_xlim = c(-1, 0)
    my_ylim = c( 0, 1)
  }
  
  plot(
    rep(0, shp_n),
    rep(0, shp_n),
    xlim = my_xlim,
    ylim = my_ylim,
    axes = FALSE,
    xaxs = "i", 
    yaxs = "i",
    pch = shape,
    cex = shp_x * shp_n:1,
    col = cols,
    bg = cols
  )
  
  box(lwd = box_w)
  
}