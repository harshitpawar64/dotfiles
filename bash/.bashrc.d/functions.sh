# ~/.bashrc.d/functions.sh

# Create directory and change into it
mkcd () {
    mkdir -p "$1" && cd "$1"
}

# Go up N directories (e.g., up 2)
up () {
    local n=${1:-1} # Default to 1 if no argument provided
    local path_part=""
    for ((i=1; i<=n; i++)); do
        path_part+="../"
    done
    cd "${path_part}" || return 1
}

# Extract any archive (intelligent extraction)
extract () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7za x "$1"       ;;
            *.deb)       ar x "$1"        ;;
            *.tar.xz)    tar xvJf "$1"    ;;
            *.xz)        unxz "$1"        ;;
            *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "extract: '$1' - file does not exist"
    fi
}

# Start a simple Python web server in current directory
serve () {
    local port=${1:-8000} # Default to port 8000
    python3 -m http.server "$port"
}

# Git convenience function
gcl() {
    git clone "$1" && cd "$(basename "$1" .git)"
}
