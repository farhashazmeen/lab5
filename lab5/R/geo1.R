

# This function queries Google's geocoding API

#' Title
#'
#' @param address 
#'
#' @return A data.frame containing the resulting \code{longitude/s}, \code{latitude/s} and \code{address/es}
#' @export
#'
#' @examples geo_connect("delhi")

geo_connect <- function(address){
  library(RCurl)
  library(rjson)
  

  
  # Call the function URLencode to build a URL string
  
  URL <- URLencode(paste("http://maps.google.com/maps/api/geocode/json?address=", address, sep=""))
  
  # Request information from the API   and Parse the JSON
  
  URL.data <- fromJSON(getURL(URL))
  
  # Check the response status from the API
  
  if (URL.data$status == "OK")
    {
    
    # Extract the latitude and longitude coordinates and address
    
    latitude <- URL.data$results[[1]]$geometry$location$lat
    longitude <- URL.data$results[[1]]$geometry$location$lng
    formatted_address <- URL.data$results[[1]]$formatted_address
    # return(paste(latitude, longitude,formatted_address, sep = ", "))
    }
    else
    {
    
    # Return Error
      
    latitude <- 0
    longitude <- 0
    formatted_address <- "ERROR"
    } 
     address.data <- data.frame(latitude = latitude, longitude = longitude, address = formatted_address, stringsAsFactors = FALSE)

     return(address.data)
}
# geo_connect("27.17502, 78.04216")
# geo_connect("linkoping")

