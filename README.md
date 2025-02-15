# My Dotfiles

This directory contains the dotfiles for my macOS config.

## Dependencies

Ensure you have the following on your system:

### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Git

```
brew install git
```

### Stow

```
brew install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/adammfurman/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

## Usage

To add new packages/files to the repo, first create a directory named after the package in the .dotfiles directory

```
cd ~/.dotfiles
mkdir NAME_OF_PACKAGE
```

Next, create the directory structure such that it mirrors the structure from the $HOME directory to the file/folder you want to stow

Given a package located in the $HOME/.config directory:

```
mkdir NAME_OF_PACKAGE/.config
```

Then, move the package folder or file into the .dotfiles directory you just created

```
mv ~/.config/NAME_OF_PACKAGE ~/.dotfiles/NAME_OF_PACKAGE/.config
```

Now, use stow to create a symlink for the package/file

```
stow NAME_OF_PACKAGE
```

Then, add and commit the changes to git

```
git add NAME_OF_PACKAGE
git commit -m "added NAME_OF_PACKAGE"
```

Finally, if all is working, push to git

```
git push origin main
```
