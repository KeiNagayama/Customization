#!/bin/sh

# move to home directory
cd

# install
wget https://repo.anaconda.com/archive/Anaconda3-2023.07-1-Linux-x86_64.sh
bash Anaconda3-2023.03-Linux-x86_64.sh

# load settings
source ~/.bashrc

# check if conda works
conda --version

