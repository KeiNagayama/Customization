#!/bin/sh

# install
curl -sS https://starship.rs/install.sh | sh

# check directory
DIR="~/.config" 
if [ ! -d $DIR ]; then
	mkdir $DIR
fi

# move config file
cp starship.toml $DIR
