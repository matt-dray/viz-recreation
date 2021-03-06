
<!-- README.md is generated from README.Rmd. Please edit that file -->

# viz-recreation

## \#RecreationThursday: LeWitt

[![rostrum.blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2021/07/05/recreate-lewitt/)
[![](https://img.shields.io/badge/Shiny-shinyapps.io-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)](https://mattdray.shinyapps.io/lewitt-remix-app/)

Week 3 (2021-07-01) of
[\#RecreationThursday](https://twitter.com/search?q=%23RecreationThursday&src=typed_query),
curated by Jake Lawler: [Sol LeWitt’s *Color Bands* series
(2000)](https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/).
My attempt used base R functions only.

I created a Shiny app to let users create their own remix. You can
[visit the app on
shinyapps.io](https://mattdray.shinyapps.io/lewitt-remix-app/) (until I
take it down), otherwise you can run the following from an R session:

``` r
shiny::runGitHub(
  "viz-recreation", "matt-dray", "main",
  "2021-07-01_rt_lewitt/lewitt-remix-app"
)
```

Here’s a preview of the app:

<div class="figure">

<img src="https://www.rostrum.blog/post/2021-07-05-recreate-lewitt_files/lewitt-app.gif" alt="Animation showing web app in action. The 'generate' button is clicked to create a two by two grid of images containing brightly coloured lines. Sliders are dragged that change features of the output like the size of the grid. The 'generate' button is clicked to randomly update the colours and lines in each panel." width="50%"/>

</div>

An example in LeWitt’s style:

<div class="figure">

<img src="https://www.rostrum.blog/post/2021-07-05-recreate-lewitt_files/figure-html/example-2-4-10-1.png" alt="A square image containing four panels in a two by two grid. Each panel contains concentric patterns of squares, triangles or circles with an alternating randomised colour palette. Each panel has a thick black border around it." width="50%"/>

</div>

An example with more panels and no borders:

<div class="figure">

<img src="https://www.rostrum.blog/post/2021-07-05-recreate-lewitt_files/figure-html/example-10-1-0-1.png" alt="A square image containing 100 panels in a 10 by 10 grid. Each panel contains concentric patterns of squares, triangles or circles with an alternating randomised colour palette. There are no borders around each panel." width="50%"/>

</div>
