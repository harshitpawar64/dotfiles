# ~/.bashrc.d/aliases.sh

# General convenience aliases
alias ls='ls --color=auto'          # Colorize ls output
alias ll='ls -alF'                  # Long list, all files, classify, color
alias la='ls -A'                    # List all (excluding . and ..)
alias grep='grep --color=auto'      # Colorize grep matches
alias df='df -h'                    # Human-readable sizes
alias free='free -m'                # Show sizes in MB
alias trash='trash-put'             # Soft-delete

# Navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'

# Clear screen (shorter)
alias cls='clear'

# Using 'bat' for 'cat'
alias cat='bat'

# Rickroll
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Termbin
alias tb='nc termbin.com 9999'

# CS50
alias submit50='UV_WARNINGS=ignore uvx submit50'
alias check50='UV_WARNINGS=ignore uvx check50'

