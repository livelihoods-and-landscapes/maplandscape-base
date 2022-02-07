#!/bin/bash
set -e

export DEBIAN_FRONTEND=noninteractive

## build ARGs
NCPUS=${NCPUS:--1}

install2.r --error -n $NCPUS \
  sf \
  lwgeom \
  shiny \
  knitr \
  rmarkdown \
  httr \
  geojsonsf \
  bslib \
  ggplot2 \
  leaflet \
  dplyr \
  tidyr \
  readr \
  fs \
  DT \
  config \
  aws.s3 \
  xfun \
  stringr \
  RColorBrewer \
  htmltools \
  ggmap \
  magrittr \
  tidyselect \
  purrr \
  shinyFeedback \
  shinyjs \
  jsonlite \
  tibble \
  waiter \
  tidyr \
  rlang \
  shinyWidgets \
  lubridate

# Clean up
rm -rf /var/lib/apt/lists/*
rm -r /tmp/downloaded_packages