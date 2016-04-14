export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad

export PS1="\[\033[35;1m\]\u\[\033[;m\]@\[\033[34;1m\]\h:\[\033[m\]\w\[\033[32;1m\]\$(parse_git_branch)\[\033[;31m\] $ "

parse_git_branch() {

git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}