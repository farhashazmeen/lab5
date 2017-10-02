
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
library(shiny)
library(leaflet)
library(ggplot2)


ui <- fluidPage(
  headerPanel(
    list(tags$head(tags$style("body {background-color:#FFFF99 ; }"))),
    
  ),
  
  leafletOutput("mymap"),
  
  numericInput("latitude", label = h3("Latitude:"), value = 27.17518),
  numericInput("longitude", label = h3("Longitude:"), value = 78.04685),
  actionButton("recalc", "Show Location")
  
)