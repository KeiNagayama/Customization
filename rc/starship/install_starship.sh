#!/bin/sh

# install
curl -sS https://starship.rs/install.sh | sh

# check directory
DIR="~/.config" 
if [ ! -d $DIR ]; then
	mkdir $DIR
fi

# move config file
cp $(dirname $0)/starship.toml $DIR

