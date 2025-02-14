# ~~~~~~~~~~~~~~~~~~~~ Oh-My-Zsh ~~~~~~~~~~~~~~~~~~~~~~~

# path to zsh installation
export ZSH="$HOME/.oh-my-zsh"

# add plugins
plugins=(
	zsh-syntax-highlighting
	zsh-completions
)


# ~~~~~~~~~~~~~~~~~~~~ Something ~~~~~~~~~~~~~~~~~~~~


# i dont remember what this is, look up with ollama
export PATH=${PATH}:/usr/local/sbin

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# ~~~~~~~~~~~~~~~~~~ Text Editors ~~~~~~~~~~~~~~~~~~~

# set neovim as default terminal text editor
export EDITOR=neovim
export VISUAL="$EDITOR"

# ~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~

# quickly edit and source .zshrc
alias nz="nvim ~/.zshrc"
alias sz=" source ~/.zshrc; echo '~/.zshrc sourced'"
alias tree="tree -L 2" #limit tree output to 3 levels by default


# edit hosts with nano
alias nh="sudo nano /etc/hosts"

# IP alias and functions
#alias ip="ifconfig -a | egrep -A 7 '^en0' | grep inet | grep -oE 
#'((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])' | head -n 1"
#alias myip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g'"

# Kill apps that match string
# function kill-apps() {
#   IFS=$'\n'
#   red=$'\e[1;31m'
#   nc=$'\e[0m'
#   if [ -z "$1" ]; then
#     printf "%s\n" "Usage: kill-apps string"
#     return 1
#   fi
#   printf "%s\n" "Finding apps that match \"$1\"..."
#   sleep 1
#   processes=($(pgrep -afil "$1"))
#   if [ ${#processes[@]} -eq 0 ]; then
#     printf "%s\n" "No apps found"
#     return 0
#   else
#     printf "%s\n" "${processes[@]}"
#     printf "${red}%s${nc}" "Kill found apps (y or n)? "
#     read -r answer
#     if [ "$answer" = "y" ]; then
#       printf "%s\n" "Killing found apps..."
#       sleep 1
#       for process in "${processes[@]}"; do
#         echo $process | awk '{print $1}' | xargs sudo kill 2>&1 | grep -v "No such process"
#       done
#       printf "%s\n" "Done"
#       return 0
#     fi
#   fi
# }


# ~~~~~~~~~~~~~~~~~~~~ Prompts ~~~~~~~~~~~~~~~~~~~~

eval "$(starship init zsh)"


# ~~~~~~~~~~~~~~~~~~~~ Other ~~~~~~~~~~~~~~~~~~~~

export PATH=$PATH:/Users/Adam/.spicetify

# turn off zsh underlining
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# ~~~~~~~~~~~~~~~~~~~ Sources ~~~~~~~~~~~~~~~~~~~~~~

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/adam/.lmstudio/bin"
