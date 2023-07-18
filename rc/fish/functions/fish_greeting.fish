function fish_greeting

	# draw a colorful fish
	set col (for i in (seq 3); random choice {0,f}{0,f}{0,f}; end)
	fish_logo $col l x

	# show Python's Zen
	if command -q python
		set i (random choice (seq 1 19))
		set_color $col[1]
		python -c "import this" | awk -v n=(echo $i) '{if(NR-2==n){print "["n"]", $0}}'
		set_color normal
	end

end
