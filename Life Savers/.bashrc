# Enable color support for `ls` and add handy aliases
alias ls='ls --color=auto -F'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

alias c='clear'
alias p=pwd

# Improve shell prompt
export PS1="\[\e[0;32m\]\u@\h \[\e[0;34m\]\w\[\e[33m\]\$(parse_git_branch)\[\e[0m\] $ "

# Customize the prompt with Git branch and colors
parse_git_branch() {
    git branch 2>/dev/null | grep '\*' | sed 's/* //'
}

# ========================
# 2. Navigation Aliases
# ========================
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias ~="cd ~"                        # Go to the home directory
alias cdp="cd -"                      # Go to the previous directory
alias mkd="mkdir -p"                  # Create a directory and its parents
alias rmd="rm -rf"                    # Remove a directory and its contents

# Quickly navigate to commonly used directories
alias cddocs="cd ~/Documents"
alias cddls="cd ~/Downloads"
alias cdproj="cd ~/Projects"

# ========================
# 3. Git Aliases
# ========================
alias gc='git commit -m'    # Add changes to the staging area
alias gc='git commit'       # Commit changes
alias gs='git status'       # Check the Git status
alias gaa='git add .'
alias gb='git branch'
alias gba='git branch -a'
alias gca='git commit --amend'
alias gcm='git checkout main'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log --oneline --graph --decorate'
alias gp='git pull'
alias gpu='git pull upstream main'
alias gps='git push'
alias gpl='git pull --rebase'
alias gst='git status'
alias gss='git stash save'
alias gsp='git stash pop'
alias grm='git rm'
alias gcp='git cherry-pick'

# ========================
# 4. File Operations Aliases
# ========================
alias cpv='cp -v'                     # Copy with verbose output
alias mvf='mv -f'                     # Force move without prompt
alias rmf='rm -f'                     # Force remove without prompt
alias cpr='cp -r'                     # Copy directories recursively
alias fsize="du -sh"                  # Show folder size

# List all files in a directory, sorted by size
alias lss="ls -lhS"

# ========================
# 5. System Monitoring Aliases
# ========================
alias htop="htop"                     # Open htop for process monitoring
alias cpu="lscpu"                     # Show CPU information
alias mem="free -m -l -t"             # Show memory usage
alias df="df -h"                      # Disk space usage
alias du="du -sh"                     # Show disk usage
alias topcpu="ps aux | sort -nrk 3,3 | head -n 10" # Top 10 CPU consuming processes
alias topmem="ps aux | sort -nrk 4,4 | head -n 10" # Top 10 memory consuming processes

# ========================
# 6. Custom Utilities
# ========================
# Reload the bash configuration
alias reload="source ~/.bashrc"

# Quickly search for a string in files
alias fgrep="grep -rnw . -e"

# Create and navigate into a new directory
mkcd () {
  mkdir -p "$1" && cd "$1"
}

# Copy the current directory path to the clipboard
alias cpath="pwd | tr -d '\n' | pbcopy"

# ========================
# 7. Docker Aliases
# ========================
alias dps='docker ps'                 # List running containers
alias di='docker images'              # List docker images
alias dex='docker exec -it'           # Execute a command in a running container
alias drm='docker rm $(docker ps -a -q)'  # Remove all stopped containers
alias drmi='docker rmi $(docker images -q)' # Remove all docker images

# ========================
# 8. Networking Aliases
# ========================
alias myip="curl ifconfig.me"          # Get public IP address
alias flushdns="sudo systemctl restart NetworkManager"  # Flush DNS cache

# ========================
# 9. Miscellaneous
# ========================
# Quickly open a file in Vim
alias v="vim"

# Show disk usage in human-readable format
alias duh="du -sh * | sort -hr"

# Show current date and time
alias now="date +'%Y-%m-%d %H:%M:%S'"

# Open a specific file with VS Code
alias codeproj="code ~/Projects"

# ========================
# 10. Environment Variables
# ========================
# Set up a custom PATH
export PATH="$HOME/bin:$PATH"

export DOCKER_HOST=npipe:////./pipe/podman-machine-default
alias docker=podman
export DOCKER_HOST=npipe:////./pipe/podman-machine-default

# ========================
# End of .bashrc
# ========================