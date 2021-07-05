ui <- fluidPage(
  
  titlePanel("Lewitt experimentation app"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "dimn",
        "Grid length",
        min = 2,
        max = 10,
        value = 2,
        step = 1,
        ticks = FALSE
      ),
      sliderInput(
        "shp_x",
        "Line thickness",
        min = 1,
        max = 50,
        value = 4,
        step = 1,
        ticks = FALSE
      ),
      sliderInput(
        "box_w",
        "Box thickness",
        min = 0,
        max = 50,
        value = 10,
        step = 1,
        ticks = FALSE
      ),
      p(
        a("Matt Dray", href = "https://www.matt-dray.com"),
        "for",
        a(
          "#RecreationThursday", 
          href = "https://twitter.com/search?q=%23recreationthursday"
        )
      ),
      p(
        "After",
        a(
          "Sol Lewitt", 
          href = "https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/"
        )
      ),
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
