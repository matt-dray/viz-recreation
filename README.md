
<!-- README.md is generated from README.Rmd. Please edit that file -->

# viz-recreation

Code to recreate or remix visualisations. The code for each one is in
its own subfolder of this repo.

## Gallery

### \#CottonViz

[![rostrum.blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2021/06/08/recreate-spear/)

A [Royal Statistical Society (RSS)
challenge](https://rss.org.uk/news-publication/news-publications/2021/section-group-reports/mary-eleanor-spear-dataviz-competition-for-childre/)
to recreate Mary Eleanor Spear’s visualisation of US cotton stocks in
the 1940s. My attempt was made with base R functions only and [won the
‘best recreation’
category](https://twitter.com/HistoryofStats/status/1407654686593802242?s=20).

My attempt:

<div class="figure">

<img src="2021-06-08_cottonviz_spear/output/cottonviz-recreate.png" alt="A recreation of Spear's original plot, which contains a line plot on the left, a bar plot on the right, and labels and titles around them. It's not an identical match. The title font is not the same, for example." width="50%"/>

</div>

A step-by-step gif of its construction:

<div class="figure">

<img src="2021-06-08_cottonviz_spear/output/gif/recreate-cottonviz.gif" alt="Gif where each frame shows the progression of recreating an original plot about cotton supplies in 1940s USA. Axes and lines are added to a plot on the left, then crosshatching, bars and axes are added to a plot on the right, and finally some titles and captions are added. The original plot is shown in the final frame to compare it to the recreation." width="50%"/>

</div>

### \#RecreationThursday: Hlito

[![rostrum.blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2021/06/21/recreate-hlito/)

Week 1 (2021-06-03) of
[\#RecreationThursday](https://twitter.com/search?q=%23RecreationThursday&src=typed_query),
curated by Natalie O’Shea: [Alfredo Hlito’s *Curves and Straight* series
(1948)](https://www.moma.org/collection/works/205953). My attempt used
base R functions only.

My attempt:

<div class="figure">

<img src="2021-06-03_rt_hlito/output/recreate-hlito.png" alt="A recreation of Curves and Straight Lines (1948) by Alfred Hlito, which is an oil painting of colorful geometric lines on a cream background. Starting at the top of the painting in the middle there is a dark yellow curve. Intersecting it in the center of the painting is a black line at a 45 degree angle and a dark blue curve. In the top right of the center area there are short horizontal black blue green and red lines. In the top left of the center area are horizontal green red blue and black lines. In the bottom left of the center there is a short horizontal red line." width="50%"/>

</div>

I randomly adjusted the element geometry 100 times:

<div class="figure">

<img src="2021-06-03_rt_hlito/output/remix-hlito-100.png" alt="A recreation of Curves and Straight Lines (1948) by Alfred Hlito. This version is a 10 by 10 grid of reproductions of Hlito's original, where randomisation has been introduced into each panel to vary the length and placement of the elements: a horizontal black stripe, several short horizontal lines of various colours and two circles, one blue, one dark yellow; all on a cream background." width="50%"/>

</div>

And here’s a gif of 10 of these randomised images:

<div class="figure">

<img src="2021-06-03_rt_hlito/output/gif/remix-hlito_max.gif" alt="A recreation of Curves and Straight Lines (1948) by Alfred Hlito. This version is an animated gif where each frame is a new veresion of Hlito's original with randomisation that varies the length and placement of the elements: a horizontal black stripe, several short horizontal lines of various colours and two circles, one blue, one dark yellow; all on a cream background." width="50%"/>

</div>

### \#RecreationThursday: LeWitt

[![rostrum.blog
post](https://img.shields.io/badge/rostrum.blog-post-008900?style=flat&labelColor=black&logo=data:image/gif;base64,R0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh+QQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2021/07/05/recreate-lewitt/)
[![](https://img.shields.io/badge/Shiny-shinyapps.io-blue?style=flat&labelColor=white&logo=RStudio&logoColor=blue)](https://mattdray.shinyapps.io/lewitt-remix-app/)

Week 3 (2021-07-01) of
[\#RecreationThursday](https://twitter.com/search?q=%23RecreationThursday&src=typed_query),
curated by Jake Lawler: [Sol LeWitt’s *Color Bands* series
(2000)](https://www.sollewittprints.org/artwork/lewitt-raisonne-2000-07/).
My attempt used base R functions only.

I created a Shiny app to let users create their own remix:

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
