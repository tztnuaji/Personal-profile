#zprof命令用于查看zsh加载时间
zmodload zsh/zprof

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/lib

# Path to your oh-my-zsh installation.
#export ZSH="/home/magicpower/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(
#	git
#)

#source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias aria2="aria2c --conf-path=/home/magicpower/conf/aria2c/aria2.conf"
alias kqss="nohup >~/nohup.out ss-local -c /home/magicpower/conf/shadowsocks/176.122.135.252/config.json &"
alias psg="ps aux | grep -v "grep" | grep -i "
alias git-clone="git clone --depth=1"
alias mkdir="mkdir -p"
alias rm="rm -I"
alias h="history"
alias proxy="export all_proxy=socks5://127.0.0.1:1081"
alias unproxy="unset all_proxy"
alias cptestvim="sudo cp ./test.vim /usr/share/vim/vim82/colors/test.vim"

#配置zsh-pure的主题
fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
#配置16进制格式的pure颜色
#全局启用16进制颜色格式
zmodload zsh/nearcolor   
zstyle :prompt:pure:path color '#57C7FF'
zstyle :prompt:pure:prompt:success color '#FF6AC1'
zstyle :prompt:pure:prompt:error color '#FF5C57'
prompt pure



#配置自动补全插件inrc
#source /home/magicpower/.oh-my-zsh/plugins/incr/incr.zsh



#配置自动高亮插件
source /home/magicpower/.zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#配置zsh-syntax-highlighting的颜色
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#5AF78E'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=#5AF78E,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#5AF78E'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#5AF78E,underline'

#配置zsh的按键
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
#for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
#for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
#for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
#completion in the middle of a line
bindkey '^i' expand-or-complete-prefix


#gopath
export GOPATH=$HOME/go

#zmv
autoload -U zmv
