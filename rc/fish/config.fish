if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
set -U FZF_LEGACY_KEYBINDINGS 0

# shell integration (off)
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# pecoでコマンドヒストリー表示
function fish_user_key_bindings
    bind \cr peco_select_history
end

# -----------------
# ENV / PATH
# -----------------

set -x LSCOLORS xbfxcxdxbxegedabagacad
set -x PGDATA /usr/local/var/postgresql@9.6
set -g fish_user_paths "/usr/local/opt/postgresql@9.6/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -x PATH $HOME/.pyenv/bin $PATH  # Pyenv
. (pyenv init - | psub)
set -g PATH $HOME/.rbenv/bin $PATH  # Rubyenv
. (rbenv init - | psub)

set -x PATH ~/bin $PATH  # 自作コマンド

# -------------------
# Alias / Abbr
# -------------------

# shell
alias awk='gawk'
alias sed='gsed'
abbr -a l ls -lha
abbr -a head head -n5
abbr -a tail tail -n5
abbr -a pbc pbcopy
abbr -a gnu gnuplot -p -e \""set grid; p '<cat' w l t''\""
abbr -a gnul gnuplot -p -e \""set grid; set logscale; set format x '10^{%L}'; set format y '10^{%L}'; p '<cat' w l t''\""
abbr -a wc wc -l

# environment
abbr -a g g++-10 -std=c++17
abbr -a j jupyter lab
abbr -a p python

# editor
abbr -a c open -a coteditor
abbr -a e emacs
abbr -a v vi

# fish config
abbr -a lc less ~/.config/fish/config.fish
abbr -a cc open -a coteditor ~/.config/fish/config.fish
abbr -a vc vi ~/.config/fish/config.fish
abbr -a sc source ~/.config/fish/config.fish

# move to frequently use directories
# naming rule: _<first_char><end_char>
abbr -a _gy cd ~/Desktop/lab/src/gravity
abbr -a _pg cd ~/Desktop/lab/prg_sem
abbr -a _sy cd ~/Desktop/lab/doc/study

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

fish_add_path /usr/local/opt/mysql@5.7/bin

