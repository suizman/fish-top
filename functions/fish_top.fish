# Based on Oh My Zsh zsh_stats https://github.com/ohmyzsh/ohmyzsh/blob/master/lib/functions.zsh

function fish_top

	history \
       	| awk '{ CMD[$1]++; count++; } END { for (a in CMD) print CMD[a] " " CMD[a]*100/count "% " a }' \
       	| grep -v "./" | sort -nr | head -n 20 | column -c3 -s " " -t | nl

end
