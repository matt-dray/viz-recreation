# #RecreationThursday: Hlito (recreate)
# Matt Dray, June 2021

# The challenge hashtag:
#   https://twitter.com/hashtag/RecreationThursday

# See Hlito's original on the MoMA site:
#   https://www.moma.org/collection/works/205953?artist_id=50003&page=1&sov_referrer=artist

# Read about my recreation in this blog post:
#   https://www.rostrum.blog/2021/06/21/recreate-hlito/

# Open graphical device
png(
  "2021-06-03_rt_hlito/output/hlito-recreate.png",
  width  = 10,
  height = 10,
  units  = "cm",
  res    = 1200
)

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

# Set left-side line segment variables
l_segs_y <- c(0.24, 0.47, 0.49, 0.51, 0.57)
l_segs_x0 <- 0.24
l_segs_x1 <- 0.33

# Set right-side line segment variables
r_segs_y <- c(0.59, 0.63, 0.65, 0.67)
r_segs_x0 <- 0.66
r_segs_x1 <- 0.75

# Set left circle segment variables
l_circ_r <- 0.6
l_circ_x <- -0.08
l_circ_y <- 0.75
l_theta <- seq(-0.8, 1, length = 200)

# Set right circle segment variables
r_circ_r <- 0.2
r_circ_x <- 0.64
r_circ_y <- 0.34
r_theta <- seq(2.3, 4, length = 200)

# Set diagonal segment variables
diag_x0 <- 0.43
diag_y0 <- 0.57
diag_x1 <- 0.66
diag_y1 <- 0.33

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

# Close graphics device, save
dev.off()