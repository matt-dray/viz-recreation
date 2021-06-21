# RSS #CottonViz challenge (remix)
# Matt Dray, June 2021

# Read more about the challenge on the RSS website:
#   https://rss.org.uk/news-publication/news-publications/2021/section-group-reports/mary-eleanor-spear-dataviz-competition-for-childre/

# Read about my recreation in this blog post:
#   https://www.rostrum.blog/2021/06/08/recreate-spear/


# Invert and colour -------------------------------------------------------


# 'Colour on the negative' approach as per:
#   https://twitter.com/mattdray/status/1405127621004955654?s=20

# Load {magick} package (install from CRAN)
library(magick)

# My recreation of Spear's charts (PNG)
path <- "2021-06-08_cottonviz_spear/output/cottonviz-recreate.png"

# Use {magick} functions to invert, colour
cotton_neg <- image_read(path) %>%  # read from URL
  image_negate() %>%  # invert colours
  image_transparent("white", fuzz = 50) %>%  # make white parts transparent
  image_background(color = "skyblue")  # will show through transparency

# Save
image_write(
  cotton_neg,
  "2021-06-08_cottonviz_spear/output/cottonviz-remix-neg.png"
)
