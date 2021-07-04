# #RecreationThursday: Lewitt (remix)
# Matt Dray, June 2021

# The challenge hashtag:
#   https://twitter.com/hashtag/RecreationThursday

# See Sol Lewitt's original 'Color Bands' (2000) on his website:
#   https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/

source("2021-07-01_rt_lewitt/R/just-lewitt.R")

par(mfrow = c(2, 2))

mapply(
  just_lewitt,
  shape = sample(21:25, 4, replace = TRUE),
  place = sample(c("C", "NE", "NW", "SW", "SE"), 4, replace = TRUE),
  MoreArgs = list(cols = sample(colours(), 10))
)
