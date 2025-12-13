# ~~~~~~~~~~~~~~~~~~~~ zsh Settings ~~~~~~~~~~~~~~~~~~~~

# i dont remember what this is
export PATH=${PATH}:/usr/local/sbin

# ~~~~~~~~~~~~~~~~~~ Text Editors ~~~~~~~~~~~~~~~~~~~

# set neovim as default terminal text editor
export EDITOR=neovim
export VISUAL="$EDITOR"

# ~~~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~

# quickly edit and source .zshrc
alias nz="nvim ~/.config/zsh/.zshrc"
alias sz=" source ~/.config/zsh/.zshrc; echo '~/.config/zsh/.zshrc sourced'"

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

# veracrypt-rsync-backup script Aliases
alias backup="~/.local/bin/veracrypt-rsync-backup/backup.sh"
alias check="$HOME/.local/bin/veracrypt-rsync-backup/check.sh"
alias restore="$HOME/.local/bin/veracrypt-rsync-backup/restore.sh"

# ~~~~~~~~~~~~~~~~~~ Variables ~~~~~~~~~~~~~~~~~~~~

GPG_TTY=$(tty)
export GPG_TTY

# ~~~~~~~~~~~~~~~~~~~~ Prompts ~~~~~~~~~~~~~~~~~~~~

eval "$(starship init zsh)"

# ~~~~~~~~~~~~~~~~~~~~ Other ~~~~~~~~~~~~~~~~~~~~

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

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/adam/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
