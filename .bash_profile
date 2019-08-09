[ -s "/Users/omer/.scm_breeze/scm_breeze.sh" ] && source "/Users/omer/.scm_breeze/scm_breeze.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/omer/google-cloud-sdk/path.bash.inc' ]; then . '/Users/omer/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/omer/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/omer/google-cloud-sdk/completion.bash.inc'; fi

if [ -f '/Users/omer/code/infrastructure/bash_profile.bash' ]; then
  export INFRA=$HOME/code/infrastructure
  . '/Users/omer/code/infrastructure/bash_profile.bash';
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
