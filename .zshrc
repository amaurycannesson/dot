export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=20000

plugins=(
  git
  zsh-autosuggestions     # Auto-suggest commands based on history
  zsh-syntax-highlighting # Highlight commands for better readability
  zsh-completions         # Better completion suggestions
  aws
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"

eval "$(uv generate-shell-completion zsh)"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export EZA_CONFIG_DIR="$HOME/.config/eza"

unset LS_COLORS

alias l="eza --icons --group-directories-first -a"
alias ll="eza --icons --group-directories-first --no-permissions --no-user -la -T -L 1 --git"

alias n="nvim"

export LG_CONFIG_FILE="$HOME/.config/lazygit/theme.yml"

alias lg="lazygit"

function set_theme() {
  local system_theme=$(defaults read -globalDomain AppleInterfaceStyle 2>/dev/null || echo "Light")

  if [[ "$system_theme" == "Dark" ]]; then
    # Set dark theme
    cp "$HOME/.config/eza/dark-theme.yml" "$HOME/.config/eza/theme.yml"
    cp "$HOME/.config/lazygit/dark-theme.yml" "$HOME/.config/lazygit/theme.yml"
    sed -i '' 's/^palette = "catppuccin_latte"/palette = "catppuccin_mocha"/' "$HOME/.config/starship.toml"
    echo "Switched to dark theme"
  else
    # Set light theme
    cp "$HOME/.config/eza/light-theme.yml" "$HOME/.config/eza/theme.yml"
    cp "$HOME/.config/lazygit/light-theme.yml" "$HOME/.config/lazygit/theme.yml"
    sed -i '' 's/^palette = "catppuccin_mocha"/palette = "catppuccin_latte"/' "$HOME/.config/starship.toml"
    echo "Switched to light theme"
  fi
}
