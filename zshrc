# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/odoo/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="philips"
# ZSH_THEME="alanpeabody"
# ZSH_THEME="dieter"
ZSH_THEME="eastwood"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  python
)

source $ZSH/oh-my-zsh.sh

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

# Odoo addons path
export ODOO_ADDONS_PATH="~/Documents/devlopment/odoo/src/enterprise,~/Documents/devlopment/odoo/src/odoo/addons,~/Documents/devlopment/odoo/src/design-themes"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias python="python3"


# Git aliases

alias ga="git add"
alias gaa="git add --all"
alias gapa="git add --patch"
alias gap="git apply"

alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"

alias gbl="tig blame -b -w"
alias gbs="git bisect"

alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gca="git commit -v -a"
alias gca!="git commit -v -a --amend"

alias gcb="git checkout -b"
alias gco="git checkout"

alias gd="git diff"
alias gdca="git diff --cached"

alias gf="git fetch"
alias glg="tig log --stat"
alias glgp="tig log --stat -p"
alias glo="tig log --oneline --decorate"
alias glog="tig log --oneline --decorate --graph"

alias gri="git rebase --interactive"
alias gpd="git push odoo-dev"


alias fnrb="git fetch odoo && git rebase odoo/master"
alias rebase="git rebase odoo/master"

function gitpush() {
    command="git push $1 $(git rev-parse --abbrev-ref HEAD) "${@:2}""
    echo "Running $command"
    eval ${command}
}

function gen_append_infos() {
	message="This commit is related to task $1. #Closes #$2 ."
	git commit --amend -m "`git log --format=%B -n 1 HEAD`" -m "" -m $message
}
