bind "set bell-style none"
set -o vi
export TERM=xterm-color
export EDITOR='vim'  #Command line
export PATH=$PATH:~/bin:/usr/local/share/python:/usr/local/sbin:/usr/local/share/npm/bin

function xtitle {  # change the title of your xterm* window
  unset PROMPT_COMMAND
  echo -ne "\033]0;$1\007" 
}

alias mem='ps -e -orss=,args= | sort -b -k1,1n'
alias updatedb='sudo /usr/libexec/locate.updatedb'

# alias sshLocalSvr='ssh -t user@192.168.1.110 screen -r'
alias sshproxy='ssh -qTfnN -D 8964 evan@yanyao.tk'

alias ie6='rdesktop -u administrator -p admin -g 1200x800 -r clipboard:CLIPBOARD 172.27.10.109:3389 &'
alias ie7='rdesktop -u administrator -p admin -g 1024x768 -r clipboard:CLIPBOARD 172.27.10.102:3389 &'
alias vbox='VBoxManage startvm "ieTester"'

alias mount_sshfs='/Applications/sshfs/bin/mount_sshfs root@192.168.1.95:/var/www_ngnix/ ~/sshfs'

alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'

alias df='df -Th'
alias psg='ps aux | grep'
alias la='ls -a'
alias ll='ls -l'

alias unrar='unrar x'
alias ctags='/usr/local/Cellar/ctags/5.8/bin/ctags'
#alias vim='/Applications/Vim.app/Contents/MacOS/Vim'
#alias vim='/Users/evan/vim7/src/MacVim/build/Release/MacVim.app/Contents/MacOS/Vim'
#alias mvim='/Users/evan/vim7/src/MacVim/build/Release/MacVim.app/Contents/MacOS/MacVim'
alias vi='vim'
alias wget='wget -c'
alias axel='axel -a -n 10'

export CLICOLOR='true'
export LSCOLORS="gxfxcxdxbxegedabagacad"

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

complete -c sudo
#complete -W "$(cat ~/.ssh/config | grep ^Host | cut -f 2 -d ' ';)" ssh
#complete -W "$(cat ~/.ssh/config | grep ^Host | cut -f 2 -d ' ';)" scp
#complete -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh
#if [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#fi

if [ -f /usr/local/etc/bash_completion ]; then
	. /usr/local/etc/bash_completion
fi
