# #RecreationThursday: Hlito (remix)
# Matt Dray, June 2021

# Function: generate original with element randomness
vary_hlito <- function(
  seed = as.numeric(Sys.time()),
  sleep = TRUE
  ) {
  
  # Set seed
  set.seed(seed)  # default is time-based
  if (sleep) Sys.sleep(1)  # pause for new seed
  
  # Set left-side line segment variables
  l_segs_y <- sample(1:100, 5) / 100  # random
  l_segs_x0 <- 0.24
  l_segs_x1 <- 0.33
  
  # Set right-side line segment variables
  r_segs_y <- sample(1:100, 4) / 100  # random
  r_segs_x0 <- 0.66
  r_segs_x1 <- 0.75
  
  # Set left circle segment variables
  l_circ_r <- 0.6
  l_circ_x <- -0.08
  l_circ_y <- 0.75
  l_theta <- seq(  # random
    sample(seq(0, 2 * pi * 100) / 100, 1), 
    sample(seq(0, 2 * pi * 100) / 100, 1), 
    length = 200
  )  
  
  # Set right circle segment variables
  r_circ_r <- 0.2
  r_circ_x <- 0.64
  r_circ_y <- 0.34
  r_theta <- seq(  # random
    sample(seq(0, 2 * pi * 100) / 100, 1), 
    sample(seq(0, 2 * pi * 100) / 100, 1), 
    length = 200
  )  
  
  # Set diagonal segment variables
  diag_x0 <- sample(1:100, 1) / 100  # random
  diag_y0 <- (-1 * diag_x0) + 1
  diag_x1 <- diag_x0 + 0.23
  diag_y1 <- diag_y0 - 0.24
  
  # Set colours
  hlito_bg <- "#D9D5C4"
  hlito_red <- "#D12E14"
  hlito_green <- "#72A40D"
  hlito_blue <- "#084398"
  hlito_black <- "#282828"
  hlito_green2 <- "#C5B64D"
  
  # Set plot parameters
  par(mar = rep(0, 4), bg = hlito_bg)
  
  # Create empty plot area
  plot(
    0:1, 
    0:1, 
    axes = FALSE,
    type = "n",
    xaxs = "i",
    yaxs = "i"
  )
  
  # Create left-side line segments
  segments(
    x0 = l_segs_x0,
    y0 = l_segs_y,
    x1 = l_segs_x1,
    y1 = l_segs_y,
    col = c(hlito_red, hlito_black, hlito_blue, hlito_red, hlito_green),
    lwd = 2
  )
  
  # Create right-side line segments
  segments(
    x0 = r_segs_x0,
    y0 = r_segs_y,
    x1 = r_segs_x1,
    y1 = r_segs_y,
    col = c(hlito_red, hlito_green, hlito_blue, hlito_black),
    lwd = 2
  )
  
  # Create left circle
  lines(
    x = l_circ_r * cos(l_theta) + l_circ_x,
    y = l_circ_r * sin(l_theta) + l_circ_y,
    col = hlito_green2,
    lwd = 2
  )
  
  # Create right circle
  lines(
    x = r_circ_r * cos(r_theta) + r_circ_x,
    y = r_circ_r * sin(r_theta) + r_circ_y,
    col = hlito_blue,
    lwd = 2
  )
  
  # Create diagonal line
  segments(
    x0 = diag_x0,
    y0 = diag_y0,
    x1 = diag_x1,
    y1 = diag_y1,
    col = hlito_black,
    lwd = 2
  )
  
}
