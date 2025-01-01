# --------------- BEGINNER-FRIENDLY BASH CONFIGURATION ---------------
# This file customizes the behavior of your terminal in Debian.
# Each section is clearly commented to explain its purpose.

# ----------------
# 1. Environment
# ----------------
# Set the terminal prompt (PS1) with colors for better visibility.
# \u: Username, \h: Hostname, \w: Working Directory
export PS1="\[\e[36;40m\]\u\[\e[m\]\[\e[35m\]@\[\e[m\][\[\e[33m\]\h\[\e[m\]]\[\e[36m\]\w\[\e[m\]: "

# Enable colorized output for better readability.
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# ----------------
# 2. Aliases
# ----------------
# Shortcuts for common commands:
alias ll='ls -lh'  # List files in long format with human-readable sizes.
alias la='ls -lha' # List all files, including hidden ones.
alias ..='cd ..'   # Move up one directory.
alias ...='cd ../..' # Move up two directories.

# Safety: Ask before deleting files.
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ----------------
# 3. Functions
# ----------------
# Extract archives of various formats.
# Usage: extract <file>
extract () {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1"   ;;
            *.tar.gz)    tar xzf "$1"   ;;
            *.bz2)       bunzip2 "$1"  ;;
            *.rar)       unrar e "$1"  ;;
            *.gz)        gunzip "$1"   ;;
            *.tar)       tar xf "$1"   ;;
            *.tbz2)      tar xjf "$1"  ;;
            *.tgz)       tar xzf "$1"  ;;
            *.zip)       unzip "$1"    ;;
            *.Z)         uncompress "$1" ;;
            *.7z)        7z x "$1"     ;;
            *) echo "Cannot extract '$1'" ;;
        esac
    else
        echo "'$1' is not a valid file."
    fi
}

# Check the size of a directory.
# Usage: dirsize <directory>
dirsize () {
    du -sh "$1" 2>/dev/null || echo "Invalid directory"
}



# --------------- END OF CONFIGURATION ---------------
