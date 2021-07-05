# #RecreationThursday: Lewitt (remix)
# Matt Dray, June 2021

# The challenge hashtag:
#   https://twitter.com/hashtag/RecreationThursday

# See Sol Lewitt's original 'Color Bands' (2000) on his website:
#   https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/

ui <- fluidPage(
  
  titlePanel("LeWitt ReMix"),
  
  sidebarLayout(
    sidebarPanel(
      p(
        actionButton(
          "randseed",
          "Generate",
          icon("bullseye")
        )
      ),
      hr(),
      sliderInput(
        "dimn",
        "Panel size",
        min = 2,
        max = 10,
        value = 2,
        step = 1,
        ticks = FALSE
      ),
      sliderInput(
        "shp_x",
        "Line width",
        min = 1,
        max = 50,
        value = 4,
        step = 1,
        ticks = FALSE
      ),
      sliderInput(
        "box_w",
        "Frame width",
        min = 0,
        max = 50,
        value = 10,
        step = 1,
        ticks = FALSE
      ),
      hr(),
      p(
        downloadButton(
          "downloadPlot",
          "Download"
        )
      ),
      hr(),
      p(
        "Inspiration:",
        a(
          "Sol LeWitt's Color Bands", 
          href = "https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/"
        )
      ),
      p(
        "By",
        a("Matt Dray", href = "https://www.matt-dray.com"),
        "for",
        a(
          "#RecreationThursday", 
          href = "https://twitter.com/search?q=%23recreationthursday"
        )
      ),
      p(
        a(
          "View source on GitHub", 
          href = "https://github.com/matt-dray/viz-recreation/"
        )
      )
    ),
    mainPanel(
      plotOutput(
        "lewittPlot",
        width = "500px",
        height = "500px"
      )
    )
  )
)
