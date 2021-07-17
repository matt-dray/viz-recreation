# Pixel art: Link, Legend of Zelda (1986), Nintendo (recreate)
# Matt Dray, July 2021

link_v_top <- c(
  0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,
  0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,
  0,0,2,0,1,3,3,3,3,3,3,1,0,2,0,0,
  0,0,2,0,3,3,3,3,3,3,3,3,0,2,0,0,
  
  0,0,2,2,3,2,1,2,2,1,2,3,2,2,0,0,
  0,0,2,2,3,2,3,2,2,3,2,3,2,2,0,0,
  0,0,0,2,2,2,2,2,2,2,2,2,2,3,0,0
)

link_v_b1 <- c(
  0,0,0,1,1,2,2,3,3,2,2,1,1,3,0,0,
  
  0,3,3,3,3,3,2,2,2,2,1,1,3,3,3,0,
  3,3,2,3,3,3,3,1,1,1,1,1,2,3,3,0,
  3,2,2,2,3,3,2,3,3,1,1,2,2,2,3,0,
  3,3,2,3,3,3,2,1,3,3,3,3,2,2,2,0,
  
  3,3,2,3,3,3,2,3,3,1,1,1,1,2,0,0,
  3,3,3,3,3,3,2,1,1,1,1,1,0,0,0,0,
  0,2,2,2,2,2,3,0,0,3,3,3,0,0,0,0,
  0,0,0,0,3,3,3,0,0,0,0,0,0,0,0,0
)

link_v_b2 <- c(
  0,0,0,0,1,2,2,3,3,2,2,1,3,3,0,0,
  
  0,0,3,3,3,3,3,2,2,2,1,1,1,2,0,0,
  0,3,3,2,3,3,3,3,1,1,1,1,1,2,0,0,
  0,3,2,2,2,3,3,2,3,3,1,1,3,0,0,0,
  0,3,3,2,3,3,3,2,1,3,3,3,1,0,0,0,
  
  0,3,3,2,3,3,3,2,3,3,1,1,1,0,0,0,
  0,3,3,3,3,3,3,2,1,1,1,3,0,0,0,0,
  0,0,2,2,2,2,2,0,0,3,3,3,0,0,0,0,
  0,0,0,0,0,0,0,0,0,3,3,3,0,0,0,0
)

# Combine vectors to get frames
link_f1 <- c(link_v_top, link_v_b1)
link_f2 <- c(link_v_top, link_v_b2)

out_path<- "2021-06-28_pixel-art_various/output"

# Function to write frame to temporary folder
write_link <- function(vec, path = out_path) {
  write_path <- file.path(path, paste0(substitute(vec), ".png"))
  png(write_path, width = 160, height = 160)
  link_m <- matrix(vec, 16)
  link_m <- link_m[, ncol(link_m):1]
  par(mar = rep(0, 4))
  link_cols <- c("white", "#7bc702", "#cc8f2d", "#6c430a")
  image(link_m, col = link_cols)
  dev.off()
}

# Write the frames
write_link(link_f1)
write_link(link_f2)

# Read frames
png_paths <- list.files(out_path, "*.png$", full.names = TRUE)
frames <- magick::image_read(png_paths)               

# Assemble frames to animate
ani <- magick::image_animate(frames, fps = 2, dispose = "previous")

# Write animation to gif
magick::image_write(ani, file.path(out_path, "link-recreate.gif"))
