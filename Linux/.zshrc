# ALIAS COMMANDS
alias ls="exa --icons --group-directories-first"
alias lsa="exa --icons --group-directories-first -a"
alias ll="exa --icons --group-directories-first -l"
alias la="exa --icons --group-directories-first -l -a"
alias gi="git init"
alias gs="git status"
alias gco="git checkout"
alias gac="git add . && git commit -m"
alias gpsh="git push -u origin main"
alias gls="git log --oneline --graph"
alias glp="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias gl="git log"
alias grep="grep --color"
alias v="nvim"
alias cat="batcat"
alias tp="bpytop"
alias gwsc="cd /var/www/CSA_Code/ws/"
alias gwsn="cd /var/www/CSA_Node/ws/"

# Fix Interop Error that randomly occurs in vscode terminal when using WSL2
fix_wsl2_interop() {
    for i in $(pstree -np -s $$ | grep -o -E '[0-9]+'); do
        if [[ -e "/run/WSL/${i}_interop" ]]; then
            export WSL_INTEROP=/run/WSL/${i}_interop
        fi
    done
}

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# find out which distribution we are running on
LFILE="/etc/*-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $LFILE ]]; then
  _distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')
elif [[ -f $MFILE ]]; then
  _distro="macos"
fi

# set an icon based on the distro
# make sure your font is compatible with https://github.com/lukas-w/font-logos
case $_distro in
    *kali*)                  ICON="ﴣ";;
    *arch*)                  ICON="";;
    *debian*)                ICON="";;
    *raspbian*)              ICON="";;
    *Ubuntu*)                ICON="";;
    *elementary*)            ICON="";;
    *fedora*)                ICON="";;
    *coreos*)                ICON="";;
    *gentoo*)                ICON="";;
    *mageia*)                ICON="";;
    *centos*)                ICON="";;
    *opensuse*|*tumbleweed*) ICON="";;
    *sabayon*)               ICON="";;
    *slackware*)             ICON="";;
    *linuxmint*)             ICON="";;
    *alpine*)                ICON="";;
    *aosc*)                  ICON="";;
    *nixos*)                 ICON="";;
    *devuan*)                ICON="";;
    *manjaro*)               ICON="";;
    *rhel*)                  ICON="";;
    *macos*)                 ICON="";;
    *)                       ICON="";;
esac

export STARSHIP_DISTRO="$ICON"

# Load Starship
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/home/rafael/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end
