export PATH="/Users/brian/.pyenv:$PATH"
eval "$(pyenv init -)"
#for pyenv virtualenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
#for qt
export PATH="/usr/local/opt/qt/bin:$PATH"

#for reading markdown files
rmd () {
    pandoc $1 | lynx -stdin
}

#virtualenvwrapper
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

#autoenv
source /usr/local/opt/autoenv/activate.sh

#rbenv
eval "$(rbenv init -)"

#GOLANG
export GOPATH=$HOME/go
