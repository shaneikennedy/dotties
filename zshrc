# Zsh
export ZSH="/Users/shane.kennedy/dev/shane/dotties/oh-my-zsh"
ZSH_THEME="refined"
DEFAULT_USER="shane.kennedy"
source "$ZSH/oh-my-zsh.sh"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    python
    fzf
    yarn
    pyenv
    github
    emacs
)

# Nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Z cli
source /opt/homebrew/etc/profile.d/z.sh

# Pyenv
PYENV_ROOT="$HOME/.pyenv"
PATH="${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Misc
export LESS="-SRXF"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
alias ls="lsd"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# bun completions
[ -s "/Users/shane.kennedy/.bun/_bun" ] && source "/Users/shane.kennedy/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# vim
alias vi=nvim

# fzf
source <(fzf --zsh)
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
