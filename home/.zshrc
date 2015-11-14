# system-wide environment settings for zsh(1)
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi
# vim mode
bindkey -v
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse )
plugins=(rails git textmate ruby alex osx zsh-syntax-highlighting git-flow)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

homebrew=/usr/local/bin:/usr/local/sbin
export PATH=$homebrew:$PATH

rbenv-clean(){gem list | cut -d" " -f1 | xargs gem uninstall -aIx}
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export MAIL_INTERCEPTOR_EMAIL="contact@vucicaleksandar.com"
export GNUTERM=x11
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=subl
export NODE_PATH=/usr/local/lib/node_modules

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome  --args --disable-web-security &"
# alias vim='nocorrect spec'
# alias vim='nocorrect vim'
alias gv='mvim --remote-silent'
alias tmux="TERM=screen-256color-bce tmux"
# alias vim='/usr/local/Cellar/macvim/7.4-76/MacVim.app/Contents/MacOS/Vim'
export DISABLE_AUTO_TITLE=true

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"


##
## Android SDK
##
export ANDROID_SDK=/usr/local/Cellar/android-sdk/

##
## Python
##
export PATH="$HOME/Library/Python/3.5/bin:$PATH"
source ~/Library/Python/3.5/lib/python/site-packages/powerline/bindings/zsh/powerline.zsh
