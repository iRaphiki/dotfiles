# Enable aliases to be sudo’ed
alias sudo="sudo "

# Dirs
alias cls="clear"
alias ..="cd .."
alias ...="cd ../.."
alias l="eza --icons --color=always --group-directories-first --sort=name"
alias ld="eza -lD --icons --sort=name"
alias la="eza -alF --group-directories-first --icons --sort=name"
alias ll="eza -al --group-directories-first --icons --sort=name"
alias tree="eza -lT --group-directories-first --icons --sort=name"
alias ~="cd ~"
alias gdt="cd $DOTFILES_PATH"
alias gws="cd ~/Developer/workspace"
alias gbp="cd ~/Developer/boilerplates"
alias gst="cd ~/Developer/sites"
alias gdc="cd ~/Developer/docs"

# Git
alias gaa="git add -A"
alias gc="$DOTLY_PATH/bin/dot git commit"
alias gca="git add --all && git commit --amend --no-edit"
alias gco="git checkout"
alias gd="$DOTLY_PATH/bin/dot git pretty-diff"
alias gs="git status -sb"
alias gf="git fetch --all -p"
alias gps="git push"
alias gpsu="git push -u origin main"
alias gpsf="git push --force"
alias gpl="git pull --rebase --autostash"
alias gb="git branch"
alias gl="$DOTLY_PATH/bin/dot git pretty-log"

# Python
alias pip="pip3"
alias py="python3"

# PHP
alias pa="php artisan"
alias pat="./vendor/bin/pest"
alias pap="./vendor/bin/pint"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'

# Utils
alias k="kill -9"
alias i.="(idea $PWD &>/dev/null &)"
alias c.="(code $PWD &>/dev/null &)"
alias c="code $1"
alias v.="(nvim $PWD &>/dev/null &)"
alias up="dot package update_all"
alias v="nvim"
alias cat="bat --theme ansi $1"
alias cpy="code --profile Python3 $1"
alias cphp="code --profile TALL $1"
