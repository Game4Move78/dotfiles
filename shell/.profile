# export http_proxy=http://127.0.0.1:7890
# export https_proxy=http://127.0.0.1:7890
# export all_proxy=socks5://127.0.0.1:7891

source $HOME/.cargo/env

[ -f "/home/plenihan/.ghcup/env" ] && . "/home/plenihan/.ghcup/env" # ghcup-env

export EDITOR=vi

# Setup PYENV
export PYENV_ROOT="$HOME/.pyenv"
[ -d $PYENV_ROOT/bin ] && export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv; then
  pyenv init - ${PYENV_SHELL}
fi

# Setup NVM

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH=$(nvm which 22.12.0 | xargs dirname):$PATH

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

emacs-eval() {
  emacsclient -e "(print (substring-no-properties $1) #'external-debugging-output)" | sed 's/^"//; s/"$//; s/\\n/\n/g'
}

if command -v go; then

   # Add go to PATH
   export PATH="$HOME/go/bin:$PATH"

fi

PATH="$HOME/.local/bin:$HOME/bin:$PATH"
