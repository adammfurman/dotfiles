# ~~~~~~~~~~~~~~ .zshenv ~~~~~~~~~~~~~~~~~~~~
#
# .zshenv is sourced for all shells (interactive,
# non-interactive, and login).
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Define standard home directories
export ZDOTDIR="$HOME/.config/zsh" # sets .zshrc file to specified location
export XDG_CONFIG_HOME=$HOME/.config
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml # changes default starship.toml location