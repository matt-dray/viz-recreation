# #RecreationThursday: Hlito (remix)
# Matt Dray, June 2021


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
gif_path <- file.path("2021-06-03_rt_hlito", "output", "gif")

# Generate some seed values
seeds <- sample(as.integer(1:1e+5), 10)

# Loop over seeds to create separate images
for (seed in seeds) {
  
  # Set path where image is to be saved
  path_out <- file.path(
    gif_path,
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
png_paths <- list.files(
  gif_path,
  pattern = ".png$",
  full.names = TRUE
)

# Stitch frames to gif
hlito_gif <- png_paths %>% 
  image_read() %>% 
  image_scale("500x500") %>%  # optional rescale
  image_animate(fps = 2, dispose = "previous") %>% 
  image_write(file.path(gif_path, "remix-hlito.gif"))
