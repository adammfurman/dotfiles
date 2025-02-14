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

# ~~~~~~~~~~~~~~~~~~ Text Editors ~~~~~~~~~~~~~~~~~~~

# set neovim as default terminal text editor
export EDITOR=neovim
export VISUAL="$EDITOR"

# ~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~

# quickly edit and source .zshrc
alias nz="nvim ~/.zshrc"
alias sz=" source ~/.zshrc; echo '~/.zshrc sourced'"
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
