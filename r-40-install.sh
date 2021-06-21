#!/bin/bash

# NOTE: run as root, obviously

# update indices
apt update 

# install helper packages
apt install --no-install-recommends software-properties-common dirmngr

# import the Ubuntu signing key
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

# add the R4.0+ Ubuntu repository from CRAN
# NOTE: the $(lsb_release -sc) variable should add the 
# Ubuntu version nickname (e.g. 'groovy') of the current
# system. Replace with the unquoted nickname if necessary
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -sc)-cran40/"

# add full CRAN repository for R4.0+
add-apt-repository ppa:c2d4u.team/c2d4y4.0+

# update APT
apt update

# install base R & external tidyverse dependencies
apt install r-base r-base-dev libssl-dev libcurl4-openssl-dev -y

# install tidyverse packages
apt install r-cran-tidyverse -y

