FROM rocker/tidyverse:latest

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libpoppler-cpp-dev \
    poppler-utils

# Install renv
RUN R -e "install.packages('renv')"

# Set RENV_PATHS_CACHE
ENV RENV_PATHS_CACHE=/home/rstudio/renv_cache
