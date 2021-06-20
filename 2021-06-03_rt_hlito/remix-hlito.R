# #RecreationThursday 2021-06-03: Hlito
# Use function to generate randomness in Hlito's original
# Matt Dray, June 2021

# Source function
source("2021-06-03_rt_hlito/R/vary-hlito.R")

# Open graphical device
png(
  "2021-06-03_rt_hlito/output/randohlito.png",
  width  = 10,
  height = 10,
  units  = "cm",
  res    = 1200
)

# 4 x 4 grid
par(mfrow = c(4, 4))

# Create 16 Hlitos with randomised parameters
purrr::walk(1:16, vary_hlito)

# Close graphics device, save output
dev.off()