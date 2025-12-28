# ~~~~~~~~~~~~~~~~~~~~ .zshrc ~~~~~~~~~~~~~~~~~~~~~~~
#
#   .zshrc is sourced for interactive shell sessions.
#   It is intended for settings like aliases and prompts.
# 
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


# ~~~~~~~~~~~~~~~~~~~~~ PATH ~~~~~~~~~~~~~~~~~~~~~~~~
# PATH sets directories for executable files

# sbin is for commands that use sudo privileges
export PATH=${PATH}:/usr/local/sbin #set for spoof.sh
# set for user scripts
export PATH=${PATH}:"$HOME/.local/bin"


# ~~~~~~~~~~~~~~~~~ zsh Settings ~~~~~~~~~~~~~~~~~~~~

# Set zsh history in .cache/zsh/history (default is just .cache)
export HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# set neovim as default text editor
export EDITOR=neovim
export VISUAL="$EDITOR"

# tell gpg-agent which terminal to use for passphrase prompts
GPG_TTY=$(tty)
export GPG_TTY


# ~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~

# quickly edit and source .zshrc
alias nz="nvim ~/.config/zsh/.zshrc"
alias sz="source ~/.config/zsh/.zshrc; echo '~/.config/zsh/.zshrc sourced'"
# Confirm before each file deletion
alias rm="rm -ri"
alias tre="tree -L 2" #limit tree output to 3 levels by default
alias ff="fastfetch"
# run local AI startup script
alias ai="/Users/adam/.local/bin/ollama-open-webui/start-local-ai.sh"
# edit hosts with nano
alias nh="sudo nano /etc/hosts"
# get system hardware information
alias hh="system_profiler SPHardwareDataType"
# get bundle identifier of an app
alias bundle-id="mdls -name kMDItemCFBundleIdentifier -r"
# get MAC address of Wi-Fi interface
alias mac-w="ifconfig en0 | grep ether | cut -d ' ' -f 2"
# get MAC address of ethernet interface
alias mac-e="ifconfig en7 | grep ether | head -n 1 | cut -d ' ' -f 2"
# list hardware address of all interface
alias mac-h="networksetup -listallhardwareports"


# ~~~~~~~~~~~~~~~~~~~~ Prompts ~~~~~~~~~~~~~~~~~~~~~

eval "$(starship init zsh)"
# turn off zsh underlining
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
# enable zsh-completions
if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

# ~~~~~~~~~~~~~~~~~~~ Sources ~~~~~~~~~~~~~~~~~~~~~~

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# ~~~~~~~~~~~~~~~~~~~ Other ~~~~~~~~~~~~~~~~~~~~~~~~

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/adam/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
