
# General Config
# ==============
# Set global default editor variables to vim
export EDITOR=vim
export VISUAL=vim

# Import our custom script directories into the path variable
PATH=$PATH:$HOME/.bin
#PATH=$PATH:$HOME/.bin/git

# Turn off all bells
set bell-style none

# Enable vi keybindings
set -o vi
set keymap vi
# Display a prompt to indicate what mode we are in
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

alias la='ls -Al'

alias cdg='cd ~/gitRepos'
alias cdwg='cd /mnt/c/gitRepos/'
alias cddps='cd /mnt/c/gitRepos/monarch-data-prep-studio/'
alias cdmon='cd /mnt/c/gitRepos/monarch-classic/'
alias cdplg='cd /mnt/c/gitRepos/monarch-dataprep/'
alias cdcom='cd /mnt/c/gitRepos/monarch-desktop-common/'
alias cdb='cd ~/.bin'
alias cdv='cd ~/.vim'
alias cdeeznuts='echo "lmao gottem"'

alias v='command vim'

alias gr='command grep'

alias f='command find'

alias g='command git'
alias ga='command git add'
alias gb='command git branch'
alias gpur='command git clean -x -d -f'
alias gc='command git commit'
alias gch='command git checkout'
alias gd='command git diff'
alias gds='command git diff --staged'
alias gdt='command git difftool'
alias gf='command git fetch --prune'
alias gir='command git rebase -i'
alias gl='command git log'
alias glg='command git log --graph --oneline --all'
alias gm='command git merge'
alias gmt='command git mergetool'
alias gps='command git push'
alias gpl='command git pull'
alias gsh='command git show'
alias gs='command git status'
alias gsa='command git stash'


# fzf Config
# ==========
# Hook fzf functionality into bash
source /usr/share/doc/fzf/examples/key-bindings.bash
source /usr/share/doc/fzf/examples/completion.bash

# Set the default command to include all files in the current
# directory, excluding git files.
# (Same as calling "<DEFAULT_COMMAND> | fzf")
export FZF_DEFAULT_COMMAND="find . -not -path '**/.git/*'"


# Oh-my-bash! Config
# ==================
# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
# NOTE: This seems to require an absolute path and will need to
#       be replaced before use.
export OSH='~/.oh-my-bash'

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
#  git
   bashmarks
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
