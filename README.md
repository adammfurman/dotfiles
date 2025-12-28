# My Dotfiles

This directory contains the dotfiles for my macOS config, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Dependencies

Ensure you have the following on your system:

### Homebrew

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Git

```
$ brew install git
```

### Stow

```
$ brew install stow
```

## Installation

First, clone the dotfiles repo in your `$HOME` directory using git

```
$ git clone git@github.com/adammfurman/dotfiles.git
```

then use GNU stow to create symlinks

```
$ cd dotfiles
$ stow .
```

Configuration files are now symlinked to their appropriate directories.

## Adding Packages

To add new directories/files to the repo, move the directory/file into the `.dotfiles` directory such that it mimics the exact file path from `$HOME` directory. 

E.g., given a directory in `~/.config/DIRECTORY_TO_STOW`, create `.dotfiles/.config`.

Next move the `DIRECTORY_TO_STOW` into the `.dotfiles` location:

```
$ mv ~/.config/DIRECTORY_TO_STOW ~/.dotfiles/config/
```

Now, use `stow` to create a symlink for the directory/file.

```
$ stow ~/.dotfiles/.config/DIRECTORY_TO_STOW
```

Then, add and commit the changes to git.

```
$ git add ~/.dotfiles/.config/DIRECTORY_TO_STOW
$ git commit -m "added DIRECTORY_TO_STOW"
```

Start a new terminal session to check that config files are worked. Then push to github.

```
$ git push origin main
```

## Other Usage

To delete all symlinks:

```
$ cd ~/.dotfiles
$ stow -D .
```

To restore all symlinks (delete and stow anew):

```
$ cd ~/.dotfiles
$ stow -R .
```