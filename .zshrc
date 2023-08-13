#zmodload zsh/zprof # uncomment for zsh performance profiling
ZSH_THEME="robbyrussell"
plugins=(git zsh-fzf-history-search)

# PATHS
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
export PNPM_HOME="/home/kio/.local/share/pnpm"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"
export PATH="$PNPM_HOME:$JAVA_HOME/bin:$PATH"
export PATH="/home/kio/.local/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
#source ~/.nvm/nvm.sh

# history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

alias make="./make"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/kio/work/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/home/kio/work/gcloud/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/home/kio/work/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/kio/work/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

if [ -z "$TMUX" ]; then
  if ! tmux list-sessions -F "#{session_name}:#{?session_attached,1,0}" | grep -q "development:1"; then
    tmux attach -t development
  else
    tmux
  fi
fi
#zprof

