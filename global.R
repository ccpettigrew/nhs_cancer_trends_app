library(ckanr)
library(httr)
library(jsonlite)
library(tidyverse)
library(lubridate)
library(readr)
library(ggplot2)
library(shiny)
library(shinydashboard)
library(DT)
library(shinythemes)
library(bbplot)
library(janitor)
library(tools)

geographic_lables <- read_csv("geo.csv")

cancer_data <- read_csv("canc.csv")

#Total Incidence

borders_data <- cancer_data %>%
  filter(HB == "S08000016") %>%
  filter(CancerSite == "All cancer types")

#Trends by cancer
  
  sum_all_cancer <- cancer_data %>%
  filter(HB == "S08000016") %>%
  filter(CancerSite != "All cancer types") %>%
  group_by(CancerSite) 

#table output



