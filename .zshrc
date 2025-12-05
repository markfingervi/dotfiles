# Activate colouring in apps
export CLICOLOR=1
export GREP_OPTIONS='--color=auto' 
export GREP_COLOR='1;32'

# Add colours to `ls`
alias ls="ls -G"

# Add `ll` binding
alias ll="ls -al"

# Show where you copy
alias cp="cp -v"

# Create `alert` if it does not exist
if ! type alert &>/dev/null; then
  alias alert='echo -e "\a"'
fi

alias gitfpa="git fetch --prune --all"

# Custom prompt to show full path to current working directory
setopt PROMPT_SUBST
PROMPT='${(%):-%~} $ '

# Init `nvm`
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Load nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Init `pyenv`
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ZSH uses the hash symbol `#` as a glob, which breaks my usecases of commenting out lines in a terminal 
unsetopt extended_glob
setopt interactive_comments

# Used for `uv` python tool
. "$HOME/.cargo/env"
