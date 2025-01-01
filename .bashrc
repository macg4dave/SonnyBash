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

# Save history immediately and prevent duplicates
export HISTCONTROL=ignoredups
export HISTSIZE=1000          # Number of commands to keep in memory
export HISTFILESIZE=2000      # Number of commands to save to disk
shopt -s histappend           # Append to history instead of overwriting


# ----------------
# 2. Aliases
# ----------------
# Shortcuts for common commands:

alias ls='ls --color=auto -Fhla'
alias jdir='wget -r -c --no-parent '
alias jd='wget -c '
alias checkip='curl ipinfo.io'

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

# ----------------
# 4. Python stuff
# ----------------

# Create and activate a virtual environment
pyenv () {
    if [ ! -d "venv" ]; then
        python3 -m venv venv && echo "Virtual environment 'venv' created."
    fi
    source venv/bin/activate
    echo "Virtual environment 'venv' activated."
}

# Check installed packages
pylist () {
    pip list | less
}

# Run Python files with better error output
pyrun () {
    python3 -m $1 2>&1 | less
}

# Enable tab-completion for Python files and modules
_python_complete() {
    COMPREPLY=($(compgen -f -- "${COMP_WORDS[COMP_CWORD]}"))
}
complete -o default -F _python_complete python3



# --------------- END OF CONFIGURATION ---------------
