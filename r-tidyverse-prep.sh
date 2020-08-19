#!/bin/bash

# add cran keys
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

# add cran repo
apt-add-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
apt update

# install base R & tidyverse dependencies
apt install r-base r-base-dev libssl-dev libxml2-dev libcurl4-openssl-dev

