autoload -Uz compinit
compinit

[ -s "/Users/omer/.scm_breeze/scm_breeze.sh" ] && source "/Users/omer/.scm_breeze/scm_breeze.sh"

if [ -f ~/.git-completion.zsh ]; then
  . ~/.git-completion.zsh
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Useful to avoid "Too many open files" errors
ulimit -n 10240 12288

# opam configuration
test -r /Users/omerzach/.opam/opam-init/init.zsh && . /Users/omerzach/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
