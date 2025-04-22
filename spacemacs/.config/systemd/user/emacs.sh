set -e

source ~/.cargo/env

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

export PATH=$(nvm which 22.12.0 | xargs dirname):$PATH
export PATH="$HOME/go/bin:$PATH"

DISPLAY=':0'

exec /usr/local/bin/emacs --fg-daemon
