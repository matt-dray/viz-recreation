# #RecreationThursday: Hlito (remix)
# Matt Dray, June 2021

# The challenge hashtag:
#   https://twitter.com/hashtag/RecreationThursday

# See Hlito's original on the MoMA site:
#   https://www.moma.org/collection/works/205953?artist_id=50003&page=1&sov_referrer=artist

# Read about my recreation in this blog post:
#   https://www.rostrum.blog/2021/06/21/recreate-hlito/


# Multi-panel with randomised elements ------------------------------------


# Goal: a 10 x 10 grid of rando-Hlitos

# Source function
source("2021-06-03_rt_hlito/R/vary-hlito.R")

# Attach package
library(purrr)

# Open graphical device
png(
  "2021-06-03_rt_hlito/output/remix-hlito-100.png",
  width  = 10, 
  height = 10,
  units  = "cm",
  res    = 1200
)

# 10 x 10 grid
par(mfrow = c(10, 10))

# Create 100 Hlitos with randomised parameters
walk(1:100, vary_hlito)

# Close graphics device, save output
dev.off()



# Generate variants to gif ------------------------------------------------


# Goal: a 10-frame rando-Hlito gif

# Source function
source("2021-06-03_rt_hlito/R/vary-hlito.R")

# Attach packages
library(magick)
library(magrittr)

# Path to gif subfolder
hlito_gif_path <- file.path("2021-06-03_rt_hlito", "output", "gif")

# Generate some seed values
seeds <- sample(as.integer(1:1e+5), 10)

# Loop over seeds to create separate images
for (seed in seeds) {
  
  # Set path where image is to be saved
  path_out <- file.path(
    hlito_gif_path,
    paste0("remix-hlito-frame_", seed, ".png")
  )
  
  # Open graphics device
  png(
    path_out,
    width  = 10, 
    height = 10,
    units  = "cm",
    res    = 1200
  )
  
  # Supply ith seed value to create image
  vary_hlito(seed = seed, sleep = FALSE)
  
  # Close graphics device, save output
  dev.off()
  
  # Print success
  cat("Seed ", seed, " complete\n")
  
}

# Fetch paths to PNG frames
hlito_png_paths <- list.files(
  hlito_gif_path,
  pattern = ".png$",
  full.names = TRUE
)

# Stitch frames to gif
hlito_gif <- hlito_png_paths %>% 
  image_read() %>% 
  image_scale("500x500") %>%  # optional rescale
  image_animate(fps = 2, dispose = "previous") %>% 
  image_write(file.path(hlito_gif_path, "remix-hlito.gif"))
