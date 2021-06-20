# Royal Statistical Society's Mary Eleanor Spear #CottonViz challenge
# Inverting and colouring, as per
#   https://twitter.com/Altea_Lorenzo/status/1405097540064796674?s=20
# Matt Dray, June 2021

# Require {magick} package
# install.packages("magick")  # if not yet installed
library(magick)

# My recreation of Spear's charts (PNG)
path <- "2021-06-08_cottonviz_spear/output/cottonviz.png"

# use {magick} functions to invert, colour
cotton_neg <- image_read(path) %>%          # read from URL
  image_negate() %>%          # invert colours
  image_transparent("white", fuzz = 50) %>%   # make white parts transparent
  image_background(color = "skyblue")         # will show through transparency

# Save
image_write(
  cotton_neg,
  "2021-06-08_cottonviz_spear/output/cottonviz-neg.png"
)