# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="my"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

DISABLE_UPDATE_PROMPT=false

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
plugins=(git zsh-syntax-highlighting)

# User configuration

# where proxy
proxy_on () {
	  export https_proxy=http://127.0.0.1:8888;export http_proxy=http://127.0.0.1:8888;export all_proxy=socks5://127.0.0.1:8889
		# export all_proxy=socks5://127.0.0.1:8889	
		echo "Proxy on"
}
# where noproxy
proxy_off () {
    unset all_proxy
		unset http_proxy
	 	unset https_proxy
	 	echo "Proxy off"
}
# export all_proxy=socks5://127.0.0.1:8889
# export https_proxy=http://127.0.0.1:8888;export http_proxy=http://127.0.0.1:8888;export all_proxy=socks5://127.0.0.1:8889

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

export MYSQL='/usr/local/mysql/bin'
export PATH=$MYSQL:$PATH

# export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home'
# export M2_HOME='/usr/local/maven'
# export PATH=$M2_HOME/bin:$PATH

# export GEM_HOME='/usr/local/bin'

# export HOMEBREW_GITHUB_API_TOKEN=e7d3c2379c68c0c0f63cba8eb8690cb335ad4559

# export ANDROID_HOME=~/Library/Android/sdk
# export PATH="~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools:$PATH"

# export NODE_PATH=/usr/local/lib/node_modules

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias mongodstart="mongod --config /usr/local/etc/mongod.conf --fork"

export ANT_ROOT=/Users/Jinchun/Development/cocos/apache-ant-1.9.7/bin
export NDK_ROOT=/Users/Jinchun/Development/cocos/android-ndk-r10e
export ANDROID_SDK_ROOT=/Users/Jinchun/Library/Android/sdk
# export PATH=$ANT_ROOT:$NDK_PATH:$ANDROID_SDK_ROOT:$PATH

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/Jinchun/Development/cocos/cocos2d-x-lite/tools/cocos2d-console/bin
# export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add yarn global bin
# export PATH=$(yarn global bin):$PATH
export PATH=$HOME/.config/yarn/global/node_modules/.bin:$PATH

# flutter
export FLUTTER=/Users/Jinchun/Development/flutter/bin
export PATH=$FLUTTER:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
# source "/Users/Jinchun/Development/google-cloud-sdk/path.zsh.inc"

# boostinsider
alias boostinsider_server_proxy="ssh -o ProxyCommand='nc -x localhost:8889 %h %p' -o ServerAliveInterval=60 -i ~/.ssh/boostinsider-prod.pem ubuntu@35.164.144.3"
alias boostinsider_server="ssh -i ~/.ssh/boostinsider-prod.pem -o ServerAliveInterval=60 ubuntu@35.164.144.3"
alias boostinsider_cn='ssh -i ~/.ssh/ch-prod.pem -o ServerAliveInterval=60 root@106.14.32.69'
alias boostinsider_cn_proxy="ssh -o ProxyCommand='nc -x localhost:8889 %h %p' -o ServerAliveInterval=60 -i ~/.ssh/ch-prod.pem root@106.14.32.69"
alias wemaker='ssh -o ServerAliveInterval=60  -i ~/.ssh/wemaker.pem ubuntu@34.212.171.232'
alias es6-socialbook='~/Development/boostinsider/es/socialbook/bin/elasticsearch'
alias es-socialbook='~/Development/boostinsider/es7/bin/elasticsearch -E http.port=9201'
# alias kibana="~/Development/boostinsider/kibana/bin/kibana"

# liulu
alias liulu_server="ssh ubuntu@154.8.175.104"

# sudo sysctl -w kern.maxfiles=65536
# sudo sysctl -w kern.maxfilesperproc=65536
# ulimit -n unlimited unlimited
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
# export PATH="/usr/local/opt/ruby/bin:$PATH"

alias nom='rm -rf node_modules && rm -rf .cache-loader && rm -rf package-lock.json && mkdir node_modules && touch node_modules/.metadata_never_index && npm set progress=false && npm install'
alias rm_node_modules='rm -rf node_modules && rm -rf package-lock.json && mkdir node_modules && touch node_modules/.metadata_never_index'
alias nom-cache='npm cache clean && nom'
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# alias
alias bweb_auto-STABLE='cd /Users/Jinchun/Development/boostinsider/bweb\_auto\-STABLE'
alias bweb_auto-DEV='cd /Users/Jinchun/Development/boostinsider/bweb\_auto\-DEV'
alias socialbook-STABLE='cd /Users/Jinchun/Development/boostinsider/socialbook\-STABLE'
alias oaxx-web='cd ~/Development/oaxx/oaxx-web'
alias oaxx-server='cd ~/Development/oaxx/oaxx-server && python3 manage.py runserver'
alias zhengyou_server='ssh ubuntu@148.70.176.219'
source /Users/Jinchun/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Jinchun/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Jinchun/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Jinchun/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Jinchun/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

