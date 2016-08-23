# Jake's dotfiles

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/larsonjj/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/larsonjj/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh}
```

To update, just run that command again.

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as [detecting which version of `ls` is being used]

Here’s an example `~/.path` file that adds `~/utils` to the `$PATH`:

```bash
export PATH="$HOME/utils:$PATH"
```

### Add/Overwrite custom commands (No need for a new fork)

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

Some Examples (I use the Git Credentials section in my own .extras file):

```bash
# PATH additions
export PATH="~/bin:~/local:~/custom"

# Alias Overrides
alias ls='ls -la'
alias dl="curl"

# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Jake Larson"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="jake.j.larson@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use `~/.extra` to override settings, functions and aliases from my dotfiles repository.

### Install OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults (via shell script):

```bash
sh ~/.osx
```

### Install Homebrew Settings

When setting up a new Mac, you may want to install some common Homebrew formulae (after installing Homebrew, of course):

```bash
sh ~/.brew
```

### Install RVM (Ruby Version Manager)

```bash
sh ~/.rvminstall
```

### Install Ruby Gems

```bash
sh ~/.gems
```

## I Like Feedback

Suggestions
[Here](https://github.com/larsonjj/dotfiles)!

## Thanks to…

Mathias Bynens for sharing his [awesome collection of dotfiles](https://github.com/mathiasbynens/dotfiles)
You are a Gentleman and a Scholar!
