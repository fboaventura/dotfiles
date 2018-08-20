# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$GOPATH/go/bin:$HOME/.gem/ruby/2.1.0/bin:/usr/local/bin:$PATH:/sbin:/usr/sbin:/usr/local/sbin:$HOME/sbin

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
if [[ -n ${SSH_CONNECTION} ]]; then
    ZSH_THEME="ys"
else
    ZSH_THEME="gianu"
fi

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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aws ubuntu sudo ssh-agent screen rsync systemd git docker docker-compose gpg-agent ruby python django golang digitalocean)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
   export VISUAL='vim'
else
   export EDITOR='vim'
   export VISUAL='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="${EDITOR} ~/.zshrc"
alias ohmyzsh="${EDITOR} ~/.oh-my-zsh"
alias meuip="curl http://tnkip.cf"

export GOPATH="/home/frederico/dev/golang"
export GOROOT="/usr/lib/go-1.10"
export GOTOOLDIR="/usr/lib/go-1.10/pkg/tool/linux_amd64"

setopt AUTO_CD
#source /usr/share/nvm/init-nvm.sh
# Setup local network to Docker usage of apt-cache-ng
ip addr ls dev lo |grep 192.168.168.167 >/dev/null
if [ $? -ne 0 ]; then
  sudo ip addr add 192.168.168.167/24 dev lo
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/frederico/google-cloud-sdk/path.zsh.inc' ]; then source '/home/frederico/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/frederico/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/frederico/google-cloud-sdk/completion.zsh.inc'; fi
