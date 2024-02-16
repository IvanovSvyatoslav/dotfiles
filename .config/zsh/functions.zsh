function command_exists {
  #this should be a very portable way of checking if something is on the path
  #usage: "if command_exists foo; then echo it exists; fi"
  type "$1" &> /dev/null
}

function read_log {
    # Read logs from file using bat
    tail -f "$1" | bat --paging=never -l log
}

function ya() {
    # Shell wrapper to leave cwd when exitinf yazi
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
