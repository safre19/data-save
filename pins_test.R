### Load packages ----------------------------------------------------

library(dplyr)
library(tidyverse)
library(tidyquant)
library(pins)


### Code -------------------------------------------------------------

## Create temporary pin board to save pins into
board <- board_temp(versioned = TRUE)

## Fetch data
bbd <- tq_get(x = "BBD-B.TO",
              get = "stock.prices",
              from = "2022-01-01")

## Write data
board %>% pin_write(bbd, "bbd")

board %>% pin_versions("bbd")
