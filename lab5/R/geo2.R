

#' Title
#'
#' @param address 
#'
#' @return A data.frame containing the resulting \code{longitude/s}, \code{latitude/s} and \code{address/es}
#' @export geo_connect_vector(c("40.41678, -3.70379", " Linkoping"))
#'
#' @examples geo_connect_vector(c("40.41678, -3.70379", " Linkoping"))
geo_connect_vector <- function(address){
  
  library(RCurl)
  library(rjson)
  
  address_vector <- data.frame(latitude = NULL, longitude = NULL, address = NULL)
  
  #The vector of addresses and/or coordinates, passes each one of them as a parameter to the loop
  
  for ( i in 1:length(address) )
  {
    address.data <- geo_connect(address[i])
    address_vector <- rbind(address_vector, address.data)
  }
 
   #Returns the formatted dataframe with the geocoding information
  
  return(address_vector)
}
#geo_connect_vector(c("Delhi","Dhaka"))
geo_connect_vector(c("27.17502, 78.04216", "59.32932, 18.06858"))
#geo_connect_vector(c("Madrid", "Av. de San Diego, San Cristóbal de La Laguna, Santa Cruz de Tenerife, Spain"))