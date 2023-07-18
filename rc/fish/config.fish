# -----------------
# ENV / PATH
# -----------------

# theme
fish_config theme choose "Dracula Official"

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths


# -------------------
# Alias / Abbr
# -------------------

# Linux commands
abbr -a l ls -lha
abbr -a head head -n5
abbr -a tail tail -n5
if command -q gnuplot
	abbr -a gnu gnuplot -p -e \""set grid; p '<cat' w l t''\""
	abbr -a gnul gnuplot -p -e \""set grid; set logscale; set format x '10^{%L}'; set format y '10^{%L}'; p '<cat' w l t''\""
end
abbr -a wc wc -l
abbr -a c clear
if command -q exa
	abbr -a ls exa --icons
	abbr -a ll exa --icons -lhag
	abbr -a lt exa --icons --tree
end
if command -q batcat
	abbr -a bat batcat --theme=TwoDark
end

abbr -a g g++ -std=c++17
abbr -a p python

# editor
abbr -a v vi

# fish config
abbr -a cc cat ~/.config/fish/config.fish
abbr -a vc vi ~/.config/fish/config.fish
abbr -a sc source ~/.config/fish/config.fish

# starship
abbr -a vs vi ~/.config/starship.toml

# mkdir -> cd
function mkcd
	if test (count $argv) -eq 0
		echo "Pass directory name"
		return 1
	end
	set dirname $argv[1]
	mkdir -p $dirname
	eval "cd" $dirname
end

# windows commands
abbr -a exe explorer.exe
abbr -a open explorer.exe (wslpath ./)

# enable starship
starship init fish | source

