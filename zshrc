autoload -Uz compinit
compinit

rcpath=$(print -P %N)
rcrealpath=$(ruby -e "puts File.realpath('${rcpath}')")
source ${rcrealpath:h}/vendor/zsh-git-prompt/zshrc.sh

PROMPT='%B%m%~%b$(git_super_status) %# '

export PATH=$PATH:/Applications/Racket\ v6.9/bin
