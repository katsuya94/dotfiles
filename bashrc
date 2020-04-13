alias g=git
alias n=go-notes
alias notes=go-notes

export PATH=$PATH:/Applications/calibre.app/Contents/MacOS
export PATH=$PATH:~/go/bin
export EDITOR=vim

source "$(dirname "$(stat -f %Y ~/.bashrc)")/git-prompt.sh"
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_HIDE_IF_PWD_IGNORED=1

__prompt_command() {
  local rc=$?
  local postfix
  if [[ $rc != 0 ]]; then
    postfix+=" \[\033[0;31m\][rc=$rc]\[\033[0m\]"
  fi
  postfix+=" \\\$ "
  __git_ps1 "\u@\h:\w" "$postfix"
}

PROMPT_COMMAND=__prompt_command
