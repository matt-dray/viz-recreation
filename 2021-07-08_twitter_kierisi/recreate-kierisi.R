# Jess Mostipak's disliked-colours composition (recreate)
# Matt Dray, July 2021

# After Jesse Mostipak (@kierisi):
#   https://twitter.com/kierisi/status/1412925861255421953?s=20

# My tweet response:
#  https://twitter.com/mattdray/status/1412936505375461385?s=20

dislike_vector <- c(
  
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  
  0,0,0,0,0,0,1,1,2,3,0,0,0,0,0,0,
  0,0,0,0,0,0,1,1,2,3,0,0,0,0,0,0,
  0,0,0,0,2,2,1,4,2,3,1,1,0,0,0,0,
  0,0,0,3,3,3,1,3,4,3,1,1,4,0,0,0,
  
  0,1,1,1,2,2,1,4,2,3,1,1,2,2,2,0,
  0,3,3,3,3,3,3,4,2,4,4,4,4,4,4,0,
  0,1,1,1,2,2,1,4,2,3,1,1,2,2,2,0,
  
  0,0,0,3,2,2,1,3,4,3,4,4,4,0,0,0,
  0,0,0,0,2,2,1,4,2,3,0,0,0,0,0,0,
  0,0,0,0,0,0,1,4,3,3,0,0,0,0,0,0,
  0,0,0,0,0,0,1,4,3,3,0,0,0,0,0,0,
  
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
  
)

dislike_vector <- matrix(dislike_vector, nrow = 16, ncol = 16)
dislike_vector <- dislike_vector[, ncol(dislike_vector):1]

dislike_cols <- c(
  "0" = "white",
  "1" = "#907E80",
  "2" = "#76979D",
  "3" = "#CE821C",
  "4" = "#CEC117"
)

png(
  "2021-07-08_twitter_kierisi/output/kierisi-recreate.png", 
  width  = 6,
  height = 5,
  units  = "cm",
  res    = 600
)

par(mar = rep(0, 4))
image(dislike_vector, col = dislike_cols)

dev.off()
