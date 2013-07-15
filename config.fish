set -x fish_greeting ''
set -x PATH (brew --prefix coreutils)/libexec/gnubin /usr/local/bin /usr/local/sbin $PATH /usr/local/share/npm/bin $HOME/node_modules/.bin
set -x GIT_SSL_NO_VERIFY true
set -x LC_ALL "en_US.UTF-8"

set -x WORKON_HOME $HOME/.virtualenvs
set -x PROJECT_HOME $HOME/Projects
set -x VIRTUALENVWRAPPER_PYTHON /usr/bin/python
. $PROJECT_HOME/fork/virtualfish/virtual.fish

alias yget="~/.pythonz/pythons/CPython-3.3.2/bin/python3 $PROJECT_HOME/fork/you-get/you-get -o ~/Movies"
set -x nw /Applications/node-webkit.app/Contents/MacOS/node-webkit

function ll
  ls -lh --color=auto -F --ignore="*.pyc" $argv
end

function myfunc --on-event virtualenv_did_activate
  echo "workon: " (basename $VIRTUAL_ENV)
end

function fish_right_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "venv:" (basename "$VIRTUAL_ENV") (set_color normal)
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

    if [ (_is_git_dirty) ]
      set _dirty "$red 💀  "
      set git_info $red $git_branch
    else
      set _dirty "$blue ♆ "
      set git_info $blue $git_branch
    end
  end
  echo -n -s $_base $_dirty $git_info (set_color normal)" "
end
