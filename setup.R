library(shiny)
library(dplyr)
library(readr)
library(purrr)

# Read in DQ data
dq <- read_csv("dq-text.csv")