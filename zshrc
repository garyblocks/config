# get auto-completion going
autoload -U compinit
compinit
# complete on tab, leave expansion to _expand
bindkey '^I' complete-word
# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

export TAG_CMD_FMT_STRING="/usr/bin/vim {{.Filename}} +{{.LineNumber}}"

export PATH=/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin
export PATH=$PATH:$HOME/bin:$HOME/.cargo/bin
export PATH="${HOME}/.local/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH=$HOME/.node_modules_global/bin:$PATH
export PATH=/usr/bin:$PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    autojump
    osx
    zsh-autosuggestions
    docker docker-compose # docker auto-completion
    aws fzf # aws autocomplete
    poetry  # poetry auto completion
)
source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Gary Aliases
alias cls='clear'
alias vim='/usr/local/bin/vim'
alias vi='vim'
alias e='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=vi   
alias -s rb=vi
alias -s py=vi
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias h='split_tab'
alias v='vsplit_tab'
alias t='tab'
alias space='du -hs * | sort -rh | head'

# show directory as a tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# tag-ag
export EDITOR='/usr/local/bin/vim'
if (( $+commands[tag] )); then
  tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
  alias ag=tag
fi

# git add modified file only
git() {
    if [[ $@ == "am" ]]; then
        command git add `git s | grep modified | awk -F: '{print $2}'`
    else
        command git "$@"
    fi
}

# fzf
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'  # set height
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# for pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# syntax highlighting
source $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# colorls
source $(dirname $(gem which colorls))/tab_complete.sh
alias lc='colorls -lA --sd'

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
