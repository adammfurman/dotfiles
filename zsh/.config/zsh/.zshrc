# ~~~~~~~~~~~~~~~~~~~~ Oh-My-Zsh ~~~~~~~~~~~~~~~~~~~~~~~

# path to zsh installation
export ZSH="$HOME/.config/zsh/.oh-my-zsh"

# add plugins
plugins=(
	zsh-syntax-highlighting
	zsh-completions
)


# ~~~~~~~~~~~~~~~~~~~~ zsh Settings ~~~~~~~~~~~~~~~~~~~~

# i dont remember what this is
export PATH=${PATH}:/usr/local/sbin

# move history to cache directory
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"


# ~~~~~~~~~~~~~~~~~~ Text Editors ~~~~~~~~~~~~~~~~~~~

# set neovim as default terminal text editor
export EDITOR=neovim
export VISUAL="$EDITOR"

# ~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~

# quickly edit and source .zshrc
alias nz="nvim ~/.config/zsh/.zshrc"
alias sz=" source ~/.config/zsh/.zshrc; echo '~/.config/zsh/.zshrc sourced'"
alias tree="tree -L 2" #limit tree output to 3 levels by default
alias ff="fastfetch"

# edit hosts with nano
alias nh="sudo nano /etc/hosts"

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
