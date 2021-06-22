# Function: assign global variables from one function call
setup <- function() {
  
  # Set common path to save gif files
  cotton_gif_path <<- "2021-06-08_cottonviz_spear/output/gif"
  
  # Constants: general
  CEX       <<- 0.8      # font size
  YDIV      <<- 1000     # division for y-axis
  BLACK     <<- "black"  # easy to supply off-black instead
  WHITE     <<- "white"
  XTICK_LEN <<- 0.02     # x axis tick length
  YTICK_LEN <<- 0.03
  
  # Constants: lineplot (LP)
  LP_YLIM      <<- c(0, 12)  # y-axis limite
  LP_WIDTH     <<- 3         # width of lines
  LP_YTICK_SEQ <<- seq(2, 10, 2)  # y tick locations 
  LP_YLAB_SEQ  <<- seq(0, 12, 2)  # y label locations
  
  # Constants: barplot (BP)
  BP_YLIM        <<- c(0, 25)
  BP_YTICK_SEQ   <<- seq(5, 20, 5)
  BP_YLAB_SEQ    <<- seq(0, 25, 5)
  BP_SPACE       <<- 0.5  # space between bars
  BP_HATCH_ANGLE <<- 45   # hatchmark angle
  BP_HATCH_HI    <<- 25   # hatchmark density
  BP_HATCH_MID   <<- 22
  BP_HATCH_LO    <<- 12
  
  # Replicate data as a dataframe
  cotton <<- data.frame(
    Year = 1942:1948,
    `US consumption` = c(11160, 9993,  9693,  9423,  10072, 9374,  7833),
    Exports          = c(1480,  1139,  2007,  3613,  3545,  1968,  4785),
    Stocks           = c(10657, 10744, 11164, 7326,  2530,  3080,  5283),
    `Total supply`   = c(23297, 21876, 22864, 20362, 16147, 14422, 17901),
    check.names = FALSE  # allows for spaces in variable names
  )
  
  # Convert dataframe structure for passing to barplot()
  cotton_transpose <<- t(cotton)[2:4,] / YDIV
  colnames(cotton_transpose) <<- c("", paste0("'", 43:48))
  
}

# Function: set plot parameters
set_par <- function() {
  
  # Set plotting parameters
  par(
    mgp = c(0, 0.2, 0),       # gap to tick labels
    mar = c(3, 2, 4, 1),      # margins
    mfrow = c(1, 2),          # plot layout
    ann = FALSE,              # annotation
    cex.axis = CEX,           # axis font size
    family = "Routed Gothic"  # font family
  )
  
}

# Function: gif frame 1 (blank)
frame_1 <- function() {
  
  # Dummy x-y scatter plot
  plot(
    x = cotton$Year,
    y = cotton$`US consumption` / YDIV,  # data
    axes = FALSE,    # no axes
    pch = "",        # expunge axes/points
    ylim = LP_YLIM,  # y-axis min/max limits
    xaxs = "i",      # set 'absolute origin'
    yaxs = "i"
  )
  
}

# Function: gif frame 2 (line plot axes)
frame_2 <- function() {
  
  # Manual x-axis
  axis(
    side = 1,
    at = 1942:1948,
    labels = c(1942, paste0("'", 43:48)),  # i.e. 1942, '43, '44, etc
    tck = XTICK_LEN,   # tick length
    col = WHITE,       # i.e. axis isn't visible
    col.ticks = BLACK  # i.e. axis ticks are visible
  )
  
  # Manual y-axis (just ticks)
  axis(
    side = 2,
    at = LP_YTICK_SEQ,  # no ticks needed for origin/max
    labels = FALSE, 
    tck = YTICK_LEN, 
    col = WHITE,
    col.ticks = BLACK
  )
  
  # Manual y-axis (just labels)
  axis(
    side = 2,
    at = c(0.2, LP_YTICK_SEQ, 11.8),  # origin/max labels above/below tick
    labels = LP_YLAB_SEQ, 
    las = 1,
    tck = 0,
    col = WHITE, 
    col.ticks = BLACK
  )
  
  # Manual secondary y-axis (just ticks)
  axis(
    side = 4,
    at = LP_YTICK_SEQ,
    labels = FALSE,
    tck = YTICK_LEN,
    col = WHITE,
    col.ticks = BLACK
  )
  
  # Y-axis label: horizontal at top of axis
  mtext("Millions of Boles", side = 3, cex = CEX - 0.1, adj = -0.07)
  
  # Bounding box around plot boundary
  box()
  
}

# Function: gif frame 3 (line plot lines and labels)
frame_3 <- function() {
  
  # Generate lines and labels for each group iteratively
  mapply(
    function(type, lty, x, y, label) { 
      lines(cotton$Year, cotton[[type]] / YDIV, lty = lty, lwd = LP_WIDTH)
      text(x, y, label, cex = CEX)
    },
    type = c("US consumption", "Exports", "Stocks"),
    lty = c("solid", "longdash", "dashed"),
    x = c(1946.5, 1943.7, 1946.2), 
    y = c(11, 3.2, 6.8),
    label = c("U. S. Consumption", "Exports", "Carry – over\nstocks")
  )
  
  # Add arrows from labels to lines
  arrows(
    x0 = c(1945.4, 1944.2, 1945.5),  # arrow origins
    y0 = c(10.8, 3.2, 7.1),
    x1 = c(1945, 1944.4, 1945.2),    # arrowheads
    y1 = c(9.6, 3, 6.8),
    angle = 12,
    length = 0.07
  )
  
  
}

# Function: gif frame 4 (bar plot first hatch layer)
frame_4 <- function() {
  
  # Barplot layer with hatching only (allows for crosshatching)
  barplot(
    cotton_transpose, 
    axes = FALSE,      # suppress axes
    xaxt = "n",        # suppress x-axis bar labels
    ylim = BP_YLIM,
    space = BP_SPACE,  # space between bars
    border = WHITE,    # border around bars
    col = BLACK,
    density = rep(c(BP_HATCH_HI, 0, BP_HATCH_LO), 7),  # line 'closeness
    angle = 360 - BP_HATCH_ANGLE  # top-left to bottom-right
  )
  
}

# Function: gif frame 5 (bar plot second hatch layer)
frame_5 <- function() {
  
  # Barplot layer with features
  barplot(
    cotton_transpose, 
    axes = FALSE,
    ylim = BP_YLIM,
    space = BP_SPACE,
    col = BLACK,
    density = rep(c(BP_HATCH_HI, BP_HATCH_MID, BP_HATCH_LO), 7),
    angle = BP_HATCH_ANGLE, # bottom-left to upper-right
    add = TRUE              # add as layer on top of existing plot
  )
  
}

# Function: gif frame 6 (bar plot axes and labels)
frame_6 <- function() {
  
  # Manual y-axis (just ticks)
  axis(
    side = 2,
    at = BP_YTICK_SEQ,
    tck = YTICK_LEN,
    labels = FALSE,
    col = WHITE,
    col.ticks = BLACK
  )
  
  # Manual y-axis (just labels)
  axis(
    side = 2,
    at = c(0.4, BP_YTICK_SEQ, 24.6), 
    tck = 0, 
    labels = BP_YLAB_SEQ, 
    las = 1, 
    col = WHITE
  )
  
  # Manual secondary y-axis (just ticks)
  axis(
    side = 4,
    at = BP_YTICK_SEQ,
    labels = FALSE,
    tck = YTICK_LEN,
    col = WHITE,
    col.ticks = BLACK
  )
  
  # X-axis label: horizontal at top of axis
  mtext("Millions of Boles", side = 3, adj = -0.09, cex = CEX - 0.1)
  
  # The first label is at the origin
  mtext("1942", side = 1, line = 0.2, adj = -0.06, cex = CEX)
  
  # Bounding box around plot boundary
  box()
  
  # Apply labels iteratively
  mapply(
    function(x, y, xleft, ybottom, xright, ytop, label) { 
      rect(xleft, ybottom, xright, ytop, col = WHITE, border = NA)
      text(x, y, label, cex = CEX)
    },
    xleft   = c(4.4,  4.3,  3.2),
    ybottom = c(14.4, 10.4, 6.4),
    xright  = c(6.6,  6.7,  7.8),
    ytop    = c(15.6, 11.6, 7.6),
    x = 5.5,
    y = c(15, 11, 7),
    label = c("STOCKS*", "EXPORTS", "U. S. CONSUMPTION")
  )
  
}

# Function: gif frame 7 (title and captions)
frame_7 <- function() {
  
  # Main title
  mtext(
    text = "Distribution   of   United   States   Cotton",
    outer = TRUE,  # outer plot margin
    side = 3,      # i.e. top
    line = -3,     # relative to outside to plot limit
    cex = CEX + 0.5,
    family = "Hussar Bold Condensed",
    font = 2       # bold
  )
  
  # 'Subtitle' for line plot
  mtext(
    text = "MULTIPLE CURVE",
    outer = TRUE,
    side = 3,
    line = -1,
    adj = 0.06,  # nudge
    cex = CEX,
    font = 3  # italic
  )
  
  # 'Subtitle' for bar plot
  mtext(
    text = "COMPONENT COLUMN",
    outer = TRUE,
    side = 3,
    line = -1,
    adj = 0.68,
    cex = CEX,
    font = 3
  )
  
  # Caption: source
  mtext(
    text = "Source: U. S. Department of Agriculture",
    outer = TRUE,
    side = 1,  # bottom
    line = -1,
    adj = 0.02,
    cex = CEX
  )
  
  # Caption: stocks asterisk
  mtext(
    text = "*END OF SEASON, JULY 31",
    outer = TRUE,
    side = 1,
    line = -2,
    adj = 0.94,
    cex = CEX - 0.2,
  )
  
  # Caption: US cotton
  mtext(
    text = "U. S. Supply of U. S. Cotton",
    outer = TRUE,
    side = 1,
    line = -1,
    adj = 0.97,
    cex = CEX
  )
  
}
