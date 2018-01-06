#for pyenv virtualenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
export PATH="/Users/brian/.pyenv:$PATH"
eval "$(pyenv init -)"

#for qt
export PATH="/usr/local/opt/qt/bin:$PATH"
