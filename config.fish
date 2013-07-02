set -x fish_greeting ''
set -x PATH (brew --prefix coreutils)/libexec/gnubin /usr/local/bin $PATH $HOME/node_modules/.bin
set -x GIT_SSL_NO_VERIFY true

set -x WORKON_HOME $HOME/.virtualenvs
set -x PROJECT_HOME $HOME/Projects
set -x VIRTUALENVWRAPPER_PYTHON /usr/bin/python
. $PROJECT_HOME/fork/virtualfish/virtual.fish

set -x yget $PROJECT_HOME/fork/you-get/you-get
set -x nw /Applications/node-webkit.app/Contents/MacOS/node-webkit

function ll
  ls -lh --color=auto -F --ignore="*.pyc" $argv
end

function myfunc --on-event virtualenv_did_activate
  echo "workon: " (basename $VIRTUAL_ENV)
end

function fish_right_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "workon: " (basename "$VIRTUAL_ENV") (set_color normal)
  end
end

function fish_prompt
  function _git_branch_name
    echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
  end
    
  function _is_git_dirty
    echo (git status -s --ignore-submodules=dirty ^/dev/null)
  end

  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set_color $fish_color_cwd
  set _base (basename $PWD)
  set_color normal

  if [ (_git_branch_name) ]
  set -l git_branch (_git_branch_name)
  set git_info $blue $git_branch".git"

    if [ (_is_git_dirty) ]
      set -l dirty "$red 💀"
      set git_info "$git_info$dirty"
    end
  end
  echo -n -s $_base $git_info " "
end
