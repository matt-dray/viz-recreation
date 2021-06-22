# RSS #CottonViz challenge (recreate gif)
# Matt Dray, June 2021

# Read more about the challenge on the RSS website:
#   https://rss.org.uk/news-publication/news-publications/2021/section-group-reports/mary-eleanor-spear-dataviz-competition-for-childre/

# Read about my recreation in this blog post:
#   https://www.rostrum.blog/2021/06/08/recreate-spear/



# Setup -------------------------------------------------------------------


# Attach magick (install first from CRAN)
library(magick)

# Functions to make this script more readable
source("2021-06-08_cottonviz_spear/R/frames.R")

# Set global parameters, etc (a single function to limit verbosity)
setup()

# Device settings
png_x <- 20
png_y <- 12.2
png_u <- "cm"
png_r <- 600

# Create frames -----------------------------------------------------------


# Frame 1: blank
png(file.path(cotton_gif_path, "cottonviz-frame-1.png"),
    png_x, png_y, png_u, res = png_res)
set_par()
set_par; frame_1()
dev.off()

# Frame 2: line plot axes
png(file.path(cotton_gif_path, "cottonviz-frame-2.png"),
    png_x, png_y, png_u, res = png_res)
set_par()
frame_1(); frame_2()
dev.off()

# Frame 3: line plot lines and labels
png(file.path(cotton_gif_path, "cottonviz-frame-3.png"),
    png_x, png_y, png_u, res = png_res)
set_par()
frame_1(); frame_2(); frame_3()
dev.off()


# Frame 4: bar plot first hatch layer
png(file.path(cotton_gif_path, "cottonviz-frame-4.png"),
    png_x, png_y, png_u, res = png_res)
set_par()
frame_1(); frame_2(); frame_3(); frame_4()
dev.off()


# Frame 5: bar plot second hatch layer
png(file.path(cotton_gif_path, "cottonviz-frame-5.png"),
    png_x, png_y, png_u, res = png_res)
set_par()
frame_1(); frame_2(); frame_3(); frame_4(); frame_5()
dev.off()


# Frame 6: bar plot axes and labels
png(file.path(cotton_gif_path, "cottonviz-frame-6.png"),
    png_x, png_y, png_u, res = png_res)
set_par()
frame_1(); frame_2(); frame_3(); frame_4(); frame_5(); frame_6()
dev.off()


# Frame 7: title and captions
png(file.path(cotton_gif_path, "cottonviz-frame-7.png"),
    png_x, png_y, png_u, res = png_res)
set_par()
frame_1(); frame_2(); frame_3(); frame_4(); frame_5(); frame_6(); frame_7()
dev.off()


# Create gif --------------------------------------------------------------


# Fetch paths to PNG frames
cotton_png_paths <- list.files(
  cotton_gif_path,
  pattern = ".png$",
  full.names = TRUE
)

# Stitch frames to gif
cotton_gif <- cotton_png_paths %>% 
  image_read() %>% 
  # image_scale("500x500") %>%  # optional rescale
  image_animate(fps = 1, dispose = "previous") %>% 
  image_write(file.path(cotton_gif_path, "recreate-cottonviz.gif"))
