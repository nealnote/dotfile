# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sunaku"
#ZSH_THEME="agnoster" "alanpeabody" "jbergantine" "juanghurtado"

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
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git osx brew python pip node npm svn virtualenvwrapper)
plugins=(tmux git osx brew pip)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin/:/usr/local/mysql/bin:/Users/evan/android-sdk-mac_x86/platform-tools:~/bin
#export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/mysql/bin:~/bin
#export PATH=$PATH:/opt/android-sdk-macosx/platform-tools:/opt/android-sdk-macosx/tools
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH:$HOME/node_modules/.bin"
#export PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$PATH:/usr/local/share/npm/bin
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export EDITOR=/usr/local/bin/vim
export GIT_SSL_NO_VERIFY=true
unsetopt correct_all

# virtualenvwrapper
#export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#source /usr/local/bin/virtualenvwrapper.sh

[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

# alias
alias ls='ls --color=auto -F --ignore="*.pyc"'
alias yget='$PROJECT_HOME/fork/you-get/you-get'
alias mvim='/Volumes/Macintosh\ HD/opt/homebrew-cask/Caskroom/macvim/7.3-66/MacVim-snapshot-66/mvim'
