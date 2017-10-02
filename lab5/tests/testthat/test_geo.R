# testing 

library(testthat)


# testing the inputs and outputs of our functions
expect_true(is.data.frame(geo_connect("Madrid")))
expect_true(is.data.frame(geo_connect_vector(c("Madrid", "Linkoping"))))


# geo_connect()

test_that("testing function geo_connect",{
  # address 
  expect_equal(geo_connect("Stockholm"), 
               data.frame(latitude = 59.32932, 
                          longitude = 18.06858,
                          address = "Stockholm, Sweden",
                          stringsAsFactors = FALSE),
               tolerance = 0.00001)
  # coordenates
  expect_equal(geo_connect("27.17502, 78.04216"), 
               data.frame(latitude = 27.17518 , 
                          longitude = 78.04685,
                          address = "Dashehara Ghat Rd, Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282006, India",
                          stringsAsFactors = FALSE),
               tolerance = 0.00001)
  # address ERROR         
  expect_equal(geo_connect("34.7ssfad"), 
               data.frame(latitude=0, 
                          longitude=0, 
                          address="ERROR", 
                          stringsAsFactors = FALSE))
})


