# Base Ubuntu 20.04 R Shiny-Geospatial image for maplandscape dashboards
# R base image
# Use RStudio Docker - https://github.com/rstudio/r-docker
FROM rocker/r-ver:4.1.2

RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
  libcurl4-openssl-dev \
  libssl-dev \
  libicu-dev \
  libxml2-dev \
  make \
  libpng-dev \
  libgdal-dev \
  gdal-bin \
  libgeos-dev \
  libproj-dev \
  libudunits2-dev \
  pandoc \
  libfreetype6-dev \
  libfribidi-dev \ 
  libharfbuzz-dev \ 
  libfontconfig1-dev \
  libtiff-dev \
  libgit2-dev \
  git-core \
  libsqlite3-dev \
  sqlite3 \
  libcairo2-dev \ 
  libxt-dev \
  libx11-dev \
  zlib1g-dev

RUN mkdir docker_scripts

COPY install_maplandscape.sh /docker_scripts/install_maplandscape.sh

RUN /docker_scripts/install_maplandscape.sh
