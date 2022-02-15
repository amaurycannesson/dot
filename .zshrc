autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle autojump

antigen theme dracula/zsh dracula

antigen apply

eval "$(pyenv init -)"
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
. $NVM_DIR/nvm.sh --no-use

alias f="fvm flutter"
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

source "/usr/local/share/zsh/site-functions/aws_zsh_completer.sh"
