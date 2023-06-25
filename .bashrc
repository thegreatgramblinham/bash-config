
# General Config
# ==============
# Set global default editor variables to vim
export EDITOR=vim
export VISUAL=vim

# Set global git repo directory variable
export GIT_REPO_DIR="$HOME/gitRepos"
export PICO_SDK_PATH="$GIT_REPO_DIR/pico-sdk"

# Import our custom script directories into the path variable
PATH=$PATH:$HOME/.bin
#PATH=$PATH:$HOME/.bin/git

# Turn off all bells
set bell-style none

# Set a colored shell line as a default. This will be overruled by oh-my-bash if installed.
color_prompt=yes
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

# Enable vi keybindings
set -o vi
set keymap vi
# Display a prompt to indicate what mode we are in
# Note: These settings are not currently functional. Trying to
# work on it, but they may conflict with oh-my-bash themes.
set show-mode-in-prompt on
set vi-cmd-mode-string '[C]'
set vi-ins-mode-string '[I]'

# Add colors to completions!
set colored-stats on
set colored-completion-prefix on

# Alias Config
# ============
alias src='. ~/.bashrc'
alias :q='exit'

# ls Aliases
alias la='ls -Al'
alias ll='ls -lah'

# cd Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias cdg='cd ~/gitRepos'
alias cdbg='cd ~/gitRepos/bash-config'
alias cdvg='cd ~/gitRepos/vim-config'
alias cdb='cd ~/.bin'
alias cdv='cd ~/.vim'
alias cdeeznuts='echo "lmao gottem"'

alias cdwg='cd /mnt/c/gitRepos/'
alias cddps='cd /mnt/c/gitRepos/monarch-data-prep-studio/'
alias cdmon='cd /mnt/c/gitRepos/monarch-classic/'
alias cdplg='cd /mnt/c/gitRepos/monarch-dataprep/'
alias cdcom='cd /mnt/c/gitRepos/monarch-desktop-common/'

# Vim Aliases
alias v='command vim'

# Ranger Aliases
alias r='command ranger'
alias sr='command sudo ranger'

# Linux Tool Aliases
alias ep='command grep'
alias f='command find'
alias ds='command du -h --max-depth=1 .'
alias t='command touch'

# Git Aliases
alias g='command git'
alias ga='command git add'
alias gaa='command git add .'
alias gap='command git add -p'
alias gb='command git branch'
alias gba='command git branch -al'
alias gbd='command git branch -D'
alias gc='command git commit'
alias gca='command git commit --amend'
alias gch='command git checkout'
alias gd='command git diff'
alias gds='command git diff --staged'
alias gdt='command git difftool'
alias gf='command git fetch --prune'
alias gh='command git log -p -- '
alias gir='command git rebase -i'
alias gl='command git log'
alias glg='command git log --graph --oneline --all'
alias gm='command git merge'
alias gmt='command git mergetool'
alias gpl='command git pull'
alias gps='command git push'
alias gpur='command git clean -x -d -f'
alias gr='command git restore'
alias gra='command git restore .'
alias grp='command git restore -p'
alias grs='command git restore --staged'
alias grsa='command git restore --staged .'
alias grsp='command git restore --staged -p'
alias gsh='command git show'
alias gs='command git status'
alias gst='command git stash'


# fzf Config
# ==========
fzfExampleDir="/usr/share/doc/fzf/examples"
if [[ -d "$fzfExampleDir" ]]; then
    # Hook fzf functionality into bash
    source "$fzfExampleDir/key-bindings.bash"
    source "$fzfExampleDir/completion.bash"
fi

# Set the default command to include all files in the current
# directory, excluding git files.
# (Same as calling "<DEFAULT_COMMAND> | fzf")
export FZF_DEFAULT_COMMAND="find . -not -path '**/.git/*'"

# GPG Config
# ==========
# Added as per the recommendation of the gpg-agent man
# NOTE: This is required for gpgtar to decrypt correctly.
GPG_TTY=$(tty)
export GPG_TTY


# Oh-my-bash! Config
# ==================
# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Never speak to me or my son ever again (about updates)
DISABLE_UPDATE_PROMPT=true

# Do not update without consent.
# When upgrading is desired, use the command: 'upgrade_oh_my_bash'
DISABLE_AUTO_UPDATE=true

# Path to your oh-my-bash installation.
export OSH="$HOME/.oh-my-bash"

# If oh-my-bash is not installed, silently quit and not execute
# the rest of this script.
if [[ ! -e "$OSH/oh-my-bash.sh" ]]; then
    return
fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="powerline-multiline"

# Uncomment the following line to use case-sensitive completion.
# OMB_CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  ls
  #chmod
  #general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
#   git
#   bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"
